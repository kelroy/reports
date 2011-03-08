(1..rand(1000)).each do |t|
  transaction = Transaction.create(
    :complete => 'True',
    :tax_rate => '.07',
    :created_at => Time.utc(2000 + rand(11),1 + rand(11),1 + rand(27)),
    :updated_at => Time.utc(2000 + rand(11),1 + rand(11),1 + rand(27))
  )
  line = Line.create(
     :price => 1000 * rand(1000)+5*rand(5)+rand(4),
     :quantity => rand(5)
  )
  line.transaction = transaction
  line.save
end