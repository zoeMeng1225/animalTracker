https://sqlify.io/convert




[
  '{{repeat(125)}}',
  {
    id:'{{index(2)}}',
    aid:'{{integer(1,26)}}',
    lat:'{{floating(37.911201, 37.913393)}}',
    lng:'{{floating(-119.5503257, -119.548276)}}',
    description:'{{lorem(2, "sentences")}}',
    date_create:'NOW()',
    img:function(imgs)
    {
      return 'http://via.placeholder.com/400/'+ imgs.integer(700,999)+'/fff/?     text=ICON';
    }

  }

]


[
  '{{repeat(25)}}',
  {

    id:'{{index(2)}}',
    uid:'{{integer(1,11)}}',
    name:'{{company()}}',
    age: '{{integer(0, 10)}}',
    gender: '{{gender()}}',
    
    
        type:'{{random("dog","donkey","sheep","horse","chicken","duck","cow","pig")}}',
    
     favoriteFood:function(tags){
      var foods = {
      dog:["Green Beans","Peanuts Butter","Cheese","Oatmeal","Meat","Fish","Yoghurt"],
      donkey:["Straw","Hay","Grass","Sweet Poteto","Squash","Swedes","Turnips","Carrots"],
      horse:["Snow peas","bananas","strawberries","Cantaloupe","horse raisins","Apples"],
      sheep:["Grass"," Clover","Forbs","Balage","Green chop","Silage","pasture plants"],
      cow:["Wheat"," Barley","Oats","Hay","Silage","Grass"],
      duck:["Pears","Plums","Collards","Chard","Beets","Turnips","Radishes","parsnips ","kale"],
      chicken:["Oatmeal","Cottage Cheese","Pasta","Noodles","Corn","Watermelon","Ginge ","Scrambled Egg","Pumpkin "],
      pig:["Cooked broccoli","Pitted Apricots","Cucumbers","Dark green lettuce","Cooked potatoes","pumpkins","zucchini"]
    };
     var chosen_foods = foods[this.type];
     var chosen_index = tags.integer(1,chosen_foods.length-2);
     return chosen_foods[chosen_index];
    },
  
    img:function(imgs)
    {
      return 'http://via.placeholder.com/400/'+ imgs.integer(700,999)+'/fff/?     text='+this.name;
    },
    description:'{{lorem(2, "sentences")}}',
    date_create:'NOW()'

  }
]




[
  '{{repeat(10)}}',
  {
    id:'{{index(2)}}',
    name:'{{firstName()}} {{surname()}}',
    gender: '{{gender()}}',
    username:function(){
    return 'user'+this.id;
    },
    email:function()
    {
      return this.username+'@gmail.com';
    },
    password:'MD5(\'pass\')',
    greeting: function (tags) {
      return 'Hello, ' + this.name + '! You have ' + tags.integer(1, 10) + ' unread messages.';
    },
    date_create:'NOW()',
    img:function(imgs)
    {
      return 'http://via.placeholder.com/400/'+ imgs.integer(700,999)+'/fff/?text='+this.username;
    }

  }

]




[
  '{{repeat(5, 7)}}',
  {
    _id: '{{objectId()}}',
    index: '{{index()}}',
    guid: '{{guid()}}',
    isActive: '{{bool()}}',
    balance: '{{floating(1000, 4000, 2, "$0,0.00")}}',
    picture: 'http://placehold.it/32x32',
    age: '{{integer(20, 40)}}',
    eyeColor: '{{random("blue", "brown", "green")}}',
    name: '{{firstName()}} {{surname()}}',
    gender: '{{gender()}}',
    company: '{{company().toUpperCase()}}',
    email: '{{email()}}',
    phone: '+1 {{phone()}}',
    address: '{{integer(100, 999)}} {{street()}}, {{city()}}, {{state()}}, {{integer(100, 10000)}}',
    about: '{{lorem(1, "paragraphs")}}',
    registered: '{{date(new Date(2014, 0, 1), new Date(), "YYYY-MM-ddThh:mm:ss Z")}}',
    latitude: '{{floating(-90.000001, 90)}}',
    longitude: '{{floating(-180.000001, 180)}}',
    tags: [
      '{{repeat(7)}}',
      '{{lorem(1, "words")}}'
    ],
    friends: [
      '{{repeat(3)}}',
      {
        id: '{{index()}}',
        name: '{{firstName()}} {{surname()}}'
      }
    ],
    greeting: function (tags) {
      return 'Hello, ' + this.name + '! You have ' + tags.integer(1, 10) + ' unread messages.';
    },
    favoriteFruit: function (tags) {
      var fruits = ['apple', 'banana', 'strawberry'];
      return fruits[tags.integer(0, fruits.length - 1)];
    }
  }
]




ALTER TABLE `track_users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);