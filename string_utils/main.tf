locals {
  # organization_id の正規化（ドットや大文字をハイフン小文字に変換）
  sanitized_org_name = lower(regexreplace(var.organization_name, "[^a-z0-9-]", "-"))

  # env の正規化（小文字化）
  sanitized_env = lower(var.env)

  # app の正規化（小文字化 & 15文字制限などを適用）
  sanitized_app = substr(lower(var.app), 0, 15)
}
