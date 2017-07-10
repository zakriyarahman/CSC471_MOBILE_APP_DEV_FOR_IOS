//
//  Food.swift
//  ZR_FoodItems
//
//  Created by Zak on 3/1/16.
//  Copyright © 2016 csc471.depaul.edu. All rights reserved.
//

import Foundation


let foods = [
    Food(name:  "Vegetable Pizza",
        type: .Pizza,
        shortDescription: "Onions, peppers and jalapeno Pizza",
        longDescription:  "Vegetable Pizza with grilled onions, fried green peppers, jalapeno, garlic and ginger."),
    
    Food(name:  "Chicken Burger",
        type: .Burger,
        shortDescription: "Chicken Burger",
        longDescription:  "Chicken Burger with a soft layer of bun in between burger with mayonnaise meshed with it."),
    
    Food(name:  "Gyro Burritos",
        type: .Burritos,
        shortDescription: "Gyro Burritos",
        longDescription:  "Gyro Burritos with vegetables chopped with meshed sauces."),
    
    Food(name:  "Chicken Pizza",
        type: .Pizza,
        shortDescription: "Add ons with onions, peppers and jalapeno Pizza",
        longDescription:  "Chicken Pizza with addons - grilled onions, fried green peppers, jalapeno, garlic and ginger."),
    
    Food(name:  "Gyro Burger",
        type: .Burger,
        shortDescription: "Gyro Burger",
        longDescription:  "Gyro Burger with a soft layer of bun in between burger with mayonnaise meshed with it."),
    
    Food(name:  "Chicken Burritos",
        type: .Burritos,
        shortDescription: "Chicken Burritos",
        longDescription:  "Chicken Burritos with vegetables chopped with meshed sauces."),
    
    Food(name:  "Meat Lovers Pizza",
        type: .Pizza,
        shortDescription: "Onions, peppers and jalapeno Pizza",
        longDescription:  "Homemade thin crust pizza, topped off with two types of cheese, bacon, ham, pepperoni and hot sausage! A must make for meat lover’s. "),
    
    Food(name:  "Hot and Sour Soup",
        type: .Soup,
        shortDescription:  "The soup contains ingredients to make it both spicy and sour",
        longDescription: "Common key ingredients in the include bamboo shoots, toasted sesame oil, wood ear, cloud ear fungus, day lily buds, vinegar, egg, corn starch, and white pepper. Other ingredients include button mushrooms and small slices of tofu skin. This soup is usually considered a healthy option and, other than being high in sodium, is a very healthy soup overall."),
    
    Food(name:  "Grilled Sheek Kebabs",
        type: .Kebabs,
        shortDescription:   "",
        longDescription: "Seekh Kababs are spicy kababs made from a smooth minced mixture. They can be ordered with either grilled over a bbq or baked in the oven or pan-fried on the stove-top, and are commonly served with a salad, fries, naan or pita bread and a variety of dips."),
    
    Food(name:  "Sun Dried Tomato Pasta",
        type: .Pasta,
        shortDescription:   "",
        longDescription: "Height-of-summer tomatoes burst with flavor and creates little embellised spectacular dish. Churning the oil into boiling liquid emulsifies the mixture, yielding a creamy sauce that coats."),
    
    Food(name:  "Garlic Butter Noodles",
        type: .Noodles,
        shortDescription: "Mesmersing buttered Noodles. Makes mouth watery and addictive",
        longDescription:  "Melt the butter with the oil in a small skillet or saucepan. Poured on the garlic butter and tossed well. Served immediately.\n"),
    
    Food(name:  "Chicken Nuggets",
        type: .Nuggets,
        shortDescription: "Served with garlic souce and tomato ketchup",
        longDescription:  "Chicken Nugget made from either meat slurry or chicken breasts cut to shape, breaded or battered, then deep-fried or baked. Fried in vegetable oil."),
    
    Food(name:  "Falafel Panini",
        type: .Panini,
        shortDescription: "Served with garlic souce and Hummus",
        longDescription:  "The bread is cut horizontally and filled with deli ingredients such as cheese and served warm after having been pressed by a warming grill"),
    
    Food(name:  "Chicken Salad",
        type: .Salad,
        shortDescription:   "In a mixing bowl, toss together the chicken, celery, scallions and herbs",
        longDescription: "In a medium sized bowl, whisk together the mayonnaise, lemon juice, mustard, salt and pepper to taste. Chicken and mixed gently until combined."),
    
    
];

class Food {
    
    enum Type: String {
        case Pizza = "pizza"
        case Pasta = "pasta"
        case Salad = "salad"
        case Panini = "panini"
        case Noodles = "noodles"
        case Nuggets = "nuggets"
        case Kebabs =  "kebabs"
        case Soup = "soup"
        case Burger = "burger"
        case Burritos = "burritos"
    }
    
    var name: String
    var type: Type
    var shortDescription: String
    var longDescription: String
    
    init(name: String, type: Type, shortDescription: String, longDescription: String) {
        self.name = name
        self.type = type
        self.shortDescription = shortDescription
        self.longDescription = longDescription
    }
    
    func getName()->String{
        return self.name
    }

    func getType()->Type{
        return self.type
    }
    
    func getShortDescription()->String{
        return  self.shortDescription
    }

    func getLongDescription()->String{
        return  self.longDescription
    }
}