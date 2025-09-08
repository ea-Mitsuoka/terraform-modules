locals {
  # 1. organization_nameをハイフンで分割
  domain_parts = split("-", var.organization_name)
  # 2. トップレベルドメインを除外
  domain_parts_without_tld = slice(local.domain_parts, 0, length(local.domain_parts) - 1)
  # 3. 単語が1つの場合は先頭2文字、複数の場合は各単語の先頭文字を組み合わせる
  sanitized_org_name = length(local.domain_parts_without_tld) == 1 ? substr(local.domain_parts_without_tld[0], 0, 2) : join("", [for part in local.domain_parts_without_tld : substr(part, 0, 1)])

  # 2025.08時点で安定版の1.12.2では正規表現のサポートが限定的なためコメントアウトし、復元予定があるため残す
  # sanitized_org_name = lower(regexreplace(var.organization_name, "[^a-z0-9-]", "-"))

  # env の正規化（小文字化）
  sanitized_env = lower(var.env)

  # app の正規化（小文字化 & 15文字制限などを適用）
  sanitized_app = substr(lower(var.app), 0, 15)
}
