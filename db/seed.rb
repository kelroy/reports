(1..100).each do |t|
  transaction = Transaction.create(
    :complete => 'True',
    :tax_rate => '.07',
    :created_at => Time.at(t),
    :updated_at => Time.at(t)
  )
  item = Item.create(
    :price => t,
    :quantity => t,
    :title => "item_#{t}"
  )
  item.transaction = transaction
  item.save
end