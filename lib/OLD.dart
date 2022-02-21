

Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    color: Colors.red,
                    image: DecorationImage(image: NetworkImage(temp_recipe_list[0]['imageUrl']))
                  ),
                ),

                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    // image: DecorationImage(image: NetworkImage(temp_recipe_list[0]['imageUrl']))
                  ),
                ),

                Container(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 20, 30),
                    child: Text(temp_recipe_list[0]['recipeName'],
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.access_time,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(temp_recipe_list[8]['cookingTime'].toString(),
                            style: const TextStyle(color: Colors.white, fontSize: 9),
                          )
                        ],
                      ),
                      
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.shopping_bag,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(temp_recipe_list[8]['amountOfIngredients'].toString(),
                            style: const TextStyle(color: Colors.white, fontSize: 9),
                          )
                        ],
                      ),

                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.help,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(temp_recipe_list[8]['recipeDifficulty'].toString(),
                            style: const TextStyle(color: Colors.white, fontSize: 9),
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(temp_recipe_list[0]['recipeAuthor'],
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                ),

                Container(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                      const Icon(Icons.favorite_border,
                        color: Colors.red,
                      ),

                      Text(temp_recipe_list[0]['totalLikes'].toString(),
                        style: const TextStyle(color: Colors.white),
                      )
                    ]),
                  ),
                )

              ],
            ),
          ),