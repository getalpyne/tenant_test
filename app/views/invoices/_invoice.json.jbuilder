json.extract! invoice, :id, :name, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
