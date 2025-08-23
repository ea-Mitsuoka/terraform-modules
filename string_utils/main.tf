locals {
  # organization_id の正規化（ドットや大文字をハイフン小文字に変換）
  # 1. 大文字を小文字化
  org_lower = lower(var.organization_name)

  # 2. ドットをハイフンに置換
  org_dot2dash = replace(local.org_lower, ".", "-")

  # 3. その他不要な文字（例えばアンダースコアやスペースなど）をハイフンに置換
  sanitized_org_name = replace(local.org_dot2dash, "_", "-")

  # 2025.08時点で安定版の1.12.2では正規表現のサポートが限定的なためコメントアウトし、復元予定があるため残す
  # sanitized_org_name = lower(regexreplace(var.organization_name, "[^a-z0-9-]", "-"))

  # env の正規化（小文字化）
  sanitized_env = lower(var.env)

  # app の正規化（小文字化 & 15文字制限などを適用）
  sanitized_app = substr(lower(var.app), 0, 15)
}
