Fabricator(:post) do
  title     { sequence(:title) {|i| "Post title #{i}"}}
  teaser    { sequence(:teaser) {|i| "Post title #{i}"}}
  body      {"Bacon ipsum dolor sit amet adipisicing meatloaf short loin duis aute strip steak non veniam cillum beef ribs salami t-bone frankfurter pastrami velit. Ut doner incididunt ex. Elit ullamco ribeye bacon magna do swine boudin jowl chicken velit flank ground round. Doner exercitation officia, aliquip non pork belly pancetta andouille prosciutto in labore shankle.
             
             Eiusmod turducken exercitation, id mollit quis drumstick pork. Ribeye t-bone boudin, ut spare ribs nulla culpa eu esse ham tenderloin. Meatloaf biltong adipisicing ground round bacon tongue. Non adipisicing in ball tip, turkey esse ullamco doner deserunt. Tri-tip elit prosciutto, cow cupidatat chicken leberkas commodo occaecat id do beef drumstick. Sunt bresaola drumstick enim, do doner pork loin dolor reprehenderit proident non sed flank. Ground round velit est aliquip.
             
             Shankle culpa corned beef, sirloin short ribs duis officia turkey jerky rump consequat non. Ullamco short ribs doner cow consectetur frankfurter. Aliquip pork loin flank pancetta minim meatball. Shankle in andouille shank brisket, ball tip aliquip fatback consequat pork loin beef ribs irure.
             
             Corned beef labore meatball reprehenderit cupidatat exercitation. Venison nulla eu, ground round sunt commodo brisket. Et fugiat laborum beef ribs. Laborum bresaola kielbasa mollit salami. Pig kielbasa flank proident anim tongue aliquip ullamco, drumstick boudin pastrami ut chuck. Andouille jowl rump pariatur minim.
             
             Aute t-bone velit est bresaola ut excepteur occaecat sirloin ad rump cow nulla meatball turducken. Proident jowl cupidatat, brisket in corned beef fugiat irure spare ribs laboris. Tenderloin ut laboris sint. Qui esse tongue dolore fugiat. Aliquip qui tempor capicola pork belly meatball prosciutto.
             
             Does your lorem ipsum text long for something a little meatier? Give our generator a try… it’s tasty!"}
end
