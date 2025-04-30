import UIKit

var pastaTypeSet = Set<String>()
var pastaTypeArray = [String]()

pastaTypeSet.insert( "Spaghetti" )
pastaTypeSet.insert( "Linguine" )
pastaTypeSet.insert( "Rigatoni" )
pastaTypeSet.remove("Spaghetti")

pastaTypeArray = Array( pastaTypeSet )

print( pastaTypeArray )
print(pastaTypeSet.count)

var pastaTypeSet2: Set<String> = ["Spaghetti", "Calamarata", "Rigatoni"]
pastaTypeSet2.insert("Penne")
pastaTypeSet2.remove("Rigatoni")
print(pastaTypeSet2)

let pastaSetUnion = pastaTypeSet.union(pastaTypeSet2)
print(pastaSetUnion)
print(pastaSetUnion.count)
