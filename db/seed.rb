(1..100).each do |t|
  transaction = Transaction.create(
    :complete => 'True',
    :tax_rate => '.07',
    :created_at => Time.utc(2000 + rand(11),1 + rand(11),1 + rand(27)),
    :updated_at => Time.utc(2000 + rand(11),1 + rand(11),1 + rand(27))
  )
  item = Item.create(
    :price => 100.00 * rand(),
    :quantity => rand(3),
    :title => "item_#{t}"
  )
  item.transaction = transaction
  item.save
end