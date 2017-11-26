Rails.configuration.stripe = {
  public_key: "pk_test_mVdMUbe6Ubosw57vl3K22ItG",
  secret_key: "sk_test_aFAEdBoAaWLtaKH7Cv0PBEW3",
}
Payjp.api_key = Rails.configuration.stripe[:secret_key]

