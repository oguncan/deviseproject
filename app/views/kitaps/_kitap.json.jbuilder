json.extract! kitap, :id, :isim, :ozet, :created_at, :updated_at
json.url kitap_url(kitap, format: :json)
