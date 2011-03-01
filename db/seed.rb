(1..100).each do |t|
  transaction = Transaction.create(
    :complete => 'True',
    :tax_rate => '.07',
    :created_at => Time.at(t),
    :updated_at => Time.at(t)
  )
  item = Item.create(
    :price => 100.00 * rand(),
    :quantity => rand(3),
    :title => "item_#{t}"
  )
  item.transaction = transaction
  item.save
end