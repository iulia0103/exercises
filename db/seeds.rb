jewelries = [
  ["Braceletes", 1],
  ["Earrings", 2],
  ["Necklaces", 3],
  ["Rings", 4]
]

jewelries.each do |name, code|
  Jewelry.create(name: name, code: code)
end

jewelry_items = {}
jewelry_items["Braceletes"] = [
  ["silver bracelet", 1, 17.5],
  ["braided leather bracelet", 2, 12.0]
]

jewelry_items["Earrings"] = [
  ["long silver earrings", 1, 15.5],
  ["pin earrings", 2, 7.5]
]

jewelry_items["Necklaces"] = [
  ["silver necklace", 1, 21.5],
  ["beaded necklace", 2, 15.0]
]

jewelry_items["Rings"] = [
  ["silver ring with stone", 1, 12.0],
  ["silver ring", 2, 10.0]
]

jewelry_items.each do |jewelry_name, items|
  jewelry = Jewelry.find_by(name: jewelry_name)

  items.each do |name, code, price|
    Item.create(name: name, code: code, price: price, jewelry_id: jewelry.id)
  end
end
