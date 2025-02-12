# Lab Report 3
## Jonathan Yunawan
---
# Researching Commands - ```grep```
From the [wikibooks](https://en.wikibooks.org/wiki/Grep) website, grep is defined as a Unix utility that searches through either information piped to it or files in the current directory. In this case, I will be searching through a text files to demonstrate its usage. I will also be using this directory with text files called [written_2](https://github.com/jyunawan/docsearch/tree/main/written_2). Mostly, there will be an example from a simpler file called fruits.txt to help more easily visualize what it does and a longer file from the written_2 directory.

The basic functionality of grep is ```grep [text to search] [file]```. It will then return the line that matches the text we are searching for. Let's try looking through a file called fruits.txt with the lines:  
```
Oranges are sometimes sweet, sometimes sour.
Which came first, the color orange or the fruit orange?
Bananas are yellow.
The bananas are sweet.
Apples are red or green.
Some apples are sweet, some apples are sour.
```  
If we were looking for the word banana, we would do ```grep Bananas fruits.txt```. It would then output the line: ```Bananas are yellow.```  
  
## Command Line Option: ```-i```
This command line option allows us to ignore the case of the word.  
  
Command: ```grep -i bananas fruits.txt```  
Output:  
```
Bananas are yellow.  
The bananas are sweet.
```  
  
Command: ```grep -i apple fruits.txt```  
Output:  
```
Apples are red or green.
Some apples are sweet, some apples are sour.
```  
  
Command: ```grep -i agung written_2/travel_guides/berlitz2/Bali-History.txt```  
Output:  
```
In 1550 Bali was united under Batu Renggong, the formidable ruler known as Dewa Agung (god-king) of Gelgel, near Klungkung. His men even succeeded in turning back the tide of Islam for a short while, adding eastern Java and Lombok to his domains. During his rule, Balinese power, culture, and influence reached a peak, with a boom in temple building and the associated crafts of sculpture and woodcarving.
During the rest of the 19th century, the Dutch, using the rajas and other aristocrats as regents, took control over most of Bali, but their influence in the south remained limited. This was emphasized in 1904 when a ship wrecked off Sanur was plundered of its cargo. The Dutch demanded reparations for this act; the southern rajas refused. In 1906 a force of mainly Moluccan troops led by Dutch officers marched on Denpasar to enforce compliance. They found the place almost deserted, until suddenly the Raja of Badung, together with his family and hundreds of courtiers, emerged from the palace. On a signal from the raja, one of his priests stabbed him with a kris (knife), and then, pausing only to stab their children first, the rest of the royal party began a puputan, either killing themselves or running suicidally towards the enemy. When the dreadful scene was repeated by the Dewa Agung and his wives and followers in 1908 in front of the palace at Klungkung, the rajas’ resistance to Dutch rule was at an end.
During the 1920s and 1930s, Cokorde Gde Agung Sukawati, ruler of Ubud, extended a long Sukawati family tradition of patronizing talent and craftsmanship by hosting visiting Western artists, including the German painter, Walter Spies, who stayed for 14 years. Spies’ influence revolutionized painting in Bali, which had previously been one of the least inventive of Bali’s arts, bound by repetitive conventions. The Pita Maha school of young Western-influenced artists emerged (also influenced by the Dutch pastel-ist, Rudolf Bonnet), putting Ubud on the world map of contemporary art. Spies’ house and spring-fed swimming pool (now part of the Tjampuhan Hotel) were visited by Western artists, academics, musicians, and stars of theater and film. Deeply involved in Balinese culture, Spies himself choreographed the still-performed version of the most famous Balinese dance, the kecak, based on a story from the “Ramayana.” When Germany invaded Holland in 1940, Spies was interned as an enemy alien. He died in 1942, when a ship on which he was being transported to British Ceylon was torpedoed by the Japanese.
The country’s limited foreign-exchange reserves were squandered on window-dressing projects, grand monuments, and stadiums to host the Asian Games of 1962, seen as part of a plan to bring Indonesia into the world spotlight. International travel agents were given a tour of the country, including a visit to Bali that coincided with an important Balinese ceremony in March 1963 at the so-called “mother temple” Besakih, on the slopes of the island’s highest mountain, Gunung Agung. Portentously, Gunung Agung, though long dormant, chose this particular moment to begin emitting smoke and firing rocks into the air, but the ceremony went ahead anyway, literally under a cloud. The official guests had scarcely left Bali when Gunung Agung exploded in what was the most violent eruption the island had seen in centuries. Lava flowed down its slopes, but despite the impressions conveyed by reporters (and by photographs seen in many books), it covered only a limited area. The chief instrument of destruction was the volcanic ash that showered down on the northern half of Bali, covering it with a layer 40 cm (15 inches) thick. Crops were wiped out; the rice terraces were devastated, and starvation threatened.
```  
  
Command: ```grep -i lydia written_2/non-fiction/OUP/Berk/ch1.txt```  
Output:  
```
•Bob and Sharon, parents of a 4-year-old: Our daughter, Lydia, could recite her ABCs and count from 1 to 20 by age 2 1/2. When we looked for a preschool, many programs appeared to do little more than let children play, so we chose one with lots of emphasis on academics. To me, Lydia’s preschool seems like great preparation for kindergarten and ﬁrst grade, but each morning, Lydia hates to go. Why is Lydia, who’s always been an upbeat, curious child, so unhappy?
Recall 4-year-old Lydia’s dislike of her academic preschool, described at the beginning of this chapter. Lydia’s negative reaction is certainly consistent with research ﬁndings. The behaviorist presumption that development can be mechanically engineered by social input, guaranteeing brighter, socially more mature children, is not borne out by the evidence.
```  
  
These two examples shown with the longer files demonstrated a use for it, and that would be searching. When we are searching for something we tend to not want it to be case sensitive so we can see all instances of what we are searching for, which is what this command line option does for us.
  
## Command Line Option: ```-v```
This command line option inverts the result of the search.

Command: ```grep -v bananas fruits.txt```  
Output:  
```
Oranges are sometimes sweet, sometimes sour.
Which came first, the color orange or the fruit orange?
Bananas are yellow.
Apples are red or green.
Some apples are sweet, some apples are sour.
```  
  
Command: ```grep -iv bananas fruits.txt```  
Output:  
```
Oranges are sometimes sweet, sometimes sour.
Which came first, the color orange or the fruit orange?
Apples are red or green.
Some apples are sweet, some apples are sour.
```  
  
Command:  
```
find written_2 > find_result.txt
grep -v .txt find_result.txt
```  
Output:  
```
written_2
written_2/non-fiction
written_2/non-fiction/OUP
written_2/non-fiction/OUP/Abernathy
written_2/non-fiction/OUP/Berk
written_2/non-fiction/OUP/Castro
written_2/non-fiction/OUP/Fletcher
written_2/non-fiction/OUP/Kauffman
written_2/non-fiction/OUP/Rybczynski
written_2/travel_guides
written_2/travel_guides/berlitz1
written_2/travel_guides/berlitz2
```  
  
Command: ```grep -v Honolulu written_2/travel_guides/berlitz1/HandRHawaii.txt```  
Output:  
```





        96815; Tel. (808) 922-2700 or (800) 336-5599; fax (808) 922-8785;
        <www.aston-hotels.com>. One of Aston’s many condominium resort
        properties, this modern high-rise has large rooms with complete
        kitchens. Lanais afford views of the Diamond Head end of Waikiki Beach.
        410 rooms.
        (808) 923-2311 or (800) 367-2343; fax (808) 926-8004;
        <www.halekulani.com>. Very large rooms, most facing the ocean,
        and luxurious bathrooms with robes, make this a “House Befitting
        Heaven,” the meaning of its Hawaiian name. With plenty of beachfront, a
        top French restaurant (La Mer), and the serene House Without A Key
        outdoor lounge for sunset drinks, Halekulani is a complete resort. 454
        rooms.
        HI 96815; Tel. (808) 949-4321 or (800) 445-8667; fax (808) 947-7898;
        <www.hawaiianvillage.hilton.com>. Waikiki’s larg­est resort
        covers 22 beachfront acres of gardens, lagoons, waterfalls, coconut
        palms, and swimming pools. There are dozens of shops, a spa, and a
        branch of the Bishop Museum in the Kalia Tower. Families love this
        city-within-a-city on the beach. 2,998 rooms.
        Hyatt Regency Waikiki $$$–$$$$ 2424 Kalakaua Avenue,
        923-7839; <www.hyattwaikiki.com>. The Hyatt’s two
        recently-renovated 40-story towers cover a city block at the Diamond
        Head end of Waikiki’s shopping avenue (across the street from the
        beach). 1,241 rooms.
        Ihilani Resort & Spa $$$$ Ka Olina Resort & Marina,
        92-1001Olani Street. Kapolei, HI 96707; Tel. (808) 679-0079 or (800)
        626-4446; fax (808) 679-0080; <www.ihilani.com>. A luxury resort
        on the west side of Oahu, expertly managed by JW Marriott, Ihilani is
        situated within a 640-acre resort community that provides golf, tennis,
        3 miles of beaches and lagoons, and a world-class spa within a
        Kahala Mandarin Oriental Hawaii $$$$ 5000 Kahala Avenue,
        739-8800; <www.mandarin-oriental.com/­kahala>. Graceful, elegant,
        and refurbished for the new century, the venerable Kahala artfully
        mixes Hawaiian, Asian, and international touches. There’s a private
        beach, swimming pool, and lagoon with resident turtles and dolphins.
        402 rooms.
        (808) 923-3111 or (800) 462-6262; fax (808) 924-4957;
        <www.outrigger.com>. This 17-story tower, perched on one of the
        best stretches of Waikiki oceanfront, is more deluxe than most
        Outrigger and related Ohana hotels. Its rooms, views, and amenities
        rival those of more expensive hotels on the same beach. 883 rooms.
        96815; Tel. (808) 922-1233 or (800) 367-6060; fax (808) 922-0129;
        <www.pacificbeachhotel.com>. The hotel’s twin towers, located at
        the Diamond Head end of Waikiki, are a block from Kuhio Beach. Rooms
        have private lanais, refrigerators, and coffeemakers. 830 rooms.
        96815; Tel. (808) 923-7311 or (800) 325-3535; fax (808) 924-7098;
        <www.royal-hawaiian.com>. Waikiki’s “Pink Palace,” built by the
        Matson steamship line, has been a landmark since it opened in 1927 on
        the site of a royal summer palace on the beach. 527 rooms.
        Sheraton Moana Surfrider $$$$ 2365 Kalakaua Avenue,
        923-0308; <www.sheraton-moana.com>. The colonial porte cochère
        sets the tone for Waikiki’s most charming historic hotel, which opened
        in 1901. The hotel’s original banyan wing has been restored to its old
        elegance. The amenities and daily activities (including hotel tours)
        are top-notch, and the buffet meals, especially on Sunday, on the
        beachfront veranda near the courtyard banyan tree couldn’t be more
        romantic. 793 rooms.
        Sheraton Princess Kaiulani $$$–$$$$ 120 Kaiulani Avenue,
        931-4526; <www.princess-kaiulani.com>. A block removed from
        Waikiki Beach, but a few steps from the heart of the Waikiki shopping
        district, the Princess Kaiulani dates back to 1955, but the rooms are
        all updated and its 29-story tower is much newer. 1,150 rooms.
        HI 96815; Tel. (808) 922-4422 or (800) 325-3535; fax (808) 923-8785;
        <www.sheraton-waikiki.com>. With two 30-story towers, this is
        largest of Sheraton’s four Waikiki beachfront hotels, with the most
        services and room options. 1,852 rooms.
        Maui
        Grand Wailea Resort Hotel & Spa $$$$ 3700 Wailea
        Alanui, Wailea,, HI 96753; Tel. (808) 875-1234 or (800) 888-6100; fax
        (808) 874-2411; <www.grandwailea.com>. Maui’s ultimate fantasy
        resort — said to be the most expensive resort ever built — is a
        favorite with families. 780 rooms.
        Hotel Hana-Maui $$$$ Hana Highway, P.O. Box 9, Hana, HI
        96713; Tel. (808) 248-8211 or (800) 321-4262; fax (808) 248-7202;
        <www.hotelhanamaui.com>. At the end of the legendary road to Hana
        on Maui’s remote and lush east shore, this quiet upscale resort on 66
        acres with a wild volcanic oceanfront is the oldest in Maui (1946). The
        cottages near the shoreline, styled like plantation homes with large
        covered porches, are luxurious within; some come with private hot tubs.
        66 rooms.
        Hyatt Regency Maui $$$$ 200 Nohea Kai Drive, Lahaina,, HI
        96761; Tel. (808) 661-1234 or (800) 233-1234; fax (808) 667-4714;
        <www.maui.hyatt.com>. At the south end of the Kaanapali Beach
        resort complex, the Hyatt Regency is a 40-acre tropical fantasy resort,
        with exotic birds, waterfalls, garden atriums, and sculpted swimming
        pools. 806 rooms.
        Mauian Hotel on Napili Beach $$ 5441 Lower Honoapiilani
        Road, Napili Beach, Lahaina, HI 96761; Tel. (808) 669-6205 or (800)
        367-5034; fax (808) 669-0129; <www.mauian.com>. Well north of
        Kaanapali Beach, the Mauian is a Hawaiian-owned hotel dating back to
        1959, restored to its original ambience. All units are equipped with
        kitchens and ceiling fans (no air-conditioning, TVs, or phones). The
        free breakfast is a delight. 44 rooms.
        Ohana Maui Islander $$ 660 Wainee Street, Lahaina, HI
        96761; Tel. (808) 667-9766 or (800) 462-6262; fax (808) 661-3733;
        <www.ohanahotels.com>. This is Ohana’s first hotel on Maui,
        equipped with a pool and tennis courts. 360 rooms.
        Outrigger Wailea Resort $$$–$$$$ 3700 Wailea Alanui,
        Wailea, HI 96753; Tel. (808) 879-1922 or (800) OUT-RIGGER; fax (800)
        622-4852; <www.outrigger.com>. This 22-acre oceanfront resort,
        adjacent to two of the best beaches on the Kona Coast, has a
        spectacular open lobby and fine rooms with private balconies. 516
        rooms.
        Ritz-Carlton, Kapalua $$$$ One Ritz-Carlton Drive,
        Kapalua,, HI 96761; Tel. (808) 669-6200 or (800) 262-8440; fax (808)
        665-0026; <www.ritzcarlton.com>. The most northerly of the
        western Maui oceanfront resorts, the Ritz-Carlton is a grand hotel with
        hints of tropical plantation days, set amidst rugged coves and
        mountains.548 rooms.
        Westin Maui Prince Hotel Makena $$$–$$$$ 5400 Makena
        Alanui, Kihei, HI 96753; Tel. (808) 874-1111 or (800) 321-6284; fax
        (808) 879-8763; <www.westin.com>. The most southwesterly of
        Maui’s big resorts, the Prince has a pretty beach facing Molokini Isle.
        The rooms are large, lavish, and uncluttered, all with private
        ocean-view lanais. The courtyard grounds are lush with gardens and
        immense koi pools. 310 rooms.
        Big Island of Hawaii
        Ohana Keauhou Beach Resort $$–$$$ 78-6740 Alii Drive,
        Kailua-Kona, HI 96740; Tel. (808) 322-3441 or (800) 462-6262; fax (808)
        322-3117; <www.ohanahotels.com>. This old-fashioned resort from
        the 1970s has been fully renovated; rooms are spar­kling and modern.
        The grounds, including a royal sacred pool, are lush, and a few steps
        away is one of the island’s best snorkeling and swimming beaches. 311
        rooms.
        Chalet Kilauea $$–$$$ P.O. Box 998, Volcano, HI 96785; Tel.
        (808) 967-7786 or (800) 937-7786; fax (800) 577-1849 or (808) 967-8660;
        <www.volcano-hawaii.com>. Brian and Lisha Crawford are the kings
        of bed & breakfast accommodations in the Volcano area. They have
        rooms and houses to fit many tastes and budgets, from the lavish to the
        thrifty. The Chalet Kilauea, the hub of this little empire, serves
        gourmet breakfasts and afternoon teas. 6 rooms.
        Four Seasons Resort Hualalai $$$$ P.O. Box 1269,
        Kailua-Kona, HI 96745; Tel. (808) 325-8000 or (888) 336-5662; fax (808)
        325-8100; <www.fourseasons.com>. Upscale bungalows with slate
        floors, private gardens, and spacious lanais create a relaxing hideaway
        on the beach. There’s a private championship golf course, tennis court
        complex, and five swimming pools facing the ocean. 243 rooms.
        Hilton Waikoloa Village $$$$ 69-425 Waikoloa Beach Drive,
        Waikoloa, HI 96738; Tel. (808) 886-1234 or (800) HILTONS; fax
        (808)886-2900; <www. hiltonwaikoloavillage.com>. A fantasy resort
        for the whole family, with trams and launches to take guests to their
        rooms, the Hilton is best known for its swim-with-the-dolphins program.
        There’s also a 1-acre swimming pool with water slides and a vast array
        of amenities and services all over the 62-acre (25-hectare) oceanfront
        grounds. 1,240 rooms.
        Mauna Kea Beach Hotel $$$$ 62-100 Kaunaoa Drive, Kohala
        Coast, HI 96743; Tel. (808) 882-7222 or (800) 735-1111; fax (808)
        880-3112; <www.maunakeabeachhotel.com>. Built in 1965 by Laurance
        Rockefeller, this was the first great resort to be carved out of the
        lava on the Kohala Coast. It was lauded as the best island resort in
        the world for years, and it is still one of Hawaii’s premier oceanfront
        resorts, with a vast art collection, a great beach, a major golf
        course, a loyal staff, and a style all its own. 310 rooms.
        Mauna Lani Bay Hotel & Bungalows $$$$ 1400 Mauna Lani
        Drive, Kohala Coast, HI 96743; Tel. (808) 885-6622 or (800) 367-2323;
        fax (808) 885-4556; <www.maunalani.com>. Spacious rooms with
        lanais face the beach and an atrium complex of gardens and pools in
        this posh resort, the Mauna Kea’s main rival. The shoreline trail leads
        through ancient fishponds and lagoons where endangered baby sea turtles
        are raised and released every July 4th. At the end of the trail is a
        cove and reef where the freed turtles await swimmers and snorkelers.
        350 rooms.
        Outrigger Waikoloa Beach $$$ 69-275 Waikoloa Beach Drive,
        Kamuela,, HI 96738; Tel. (808) 886-6789 or (800) 922-5533; fax (808)
        886-7852; <www.outrigger.com>. Renovated in 2000, this
        full-service resort fronts a tremendous swimming and snorkeling beach
        with dozens of turtles. 545 rooms.
        Kauai
        Hanalei Colony Resort $$–$$$ 5-7130 Kuhio Highway, Hanalei,
        HI 96714; Tel. (808) 826-6235 or (800) 628-3004; fax (808) 826-9893;
        <www.marriott.com>. Nearly at the end of a winding road to the Na
        Pali Coast, these condominium units are beginning to show their age,
        but they come with complete kitchens, a white-sand beach with tide
        pools, and looming mountain peaks out of Bali Hai. No TVs or phones
        ring out in this paradise. 48 rooms.
        Kauai Marriott Resort & Beach Club $$$$ Kalapaki Beach,
        Lihue, HI 96766; Tel. (808) 245-5050 or (800) 228-9290; fax (808)
        245-5049; <www.hcr.com>. Hit hard by Hurricaine Iniki, this
        lavish resort finally reopened, retaining its informal feel, its fine
        golf courses, its lagoons with exotic animals on the isles, and some of
        the best hotel pools and swimming beaches in Hawaii. 419 rooms.
        Poipu Kapili $$$ 2221 Kapili Road, Koloa, HI 96756; Tel.
        (808) 742-6449 or (800) 443-7714; fax (808) 742-9162;
        <www.poipukapili.com>. These upscale oceanfront condominiums are
        among the best-maintained on the southern shore. Units are very large,
        fully equipped (some with washers and dryers). Mag­nif­i­cent sunsets.
        60 rooms.
        Sheraton Kauai Resort $$$$ 2440 Hoonani Road, Koloa, HI
        96756; Tel. (808) 742-1661 or (888) 847-0208; fax (808) 923-2023;
        <www.sheraton-kauai.com>. An all-inclusive resort on the Poipu
        shore, Sheraton offers large rooms in three buildings, including two
        buildings facing a lava rock shoreline. Swimming pools, spa, tennis,
        and children’s programs attract couples and families. 413 rooms.
        Molokai
        Ke Nani Kai Resort $$ Kaluakoi Resort, Kaluakoi Road,
        Maunaloa, HI 96770; Tel. (808) 552-2761 or (800) 888-2791; fax (808)
        552-0045; <www.marcresorts.com>. A family resort on the west side
        of the island, Ke Nani Kai consists of spacious fully-appointed
        apartments, a swimming poo1, tennis courts, and a golf course. Walk to
        Kepuhi Beach, drive to 3-mile-long Papohaku Beach. 120 rooms.
        Molokai Ranch & Lodge $$$–$$$$ P.O. Box 259, Maunaloa,
        HI 96770; Tel. (808) 552-2741 or (877) 726-4656; fax (808) 534-1606;
        <www.molokai-ranch.com>. Still a 54,000-acre working cattle and
        horse ranch on the west side of the island, this is Molokai’s most
        deluxe resort, with fine rooms with large lanais in the new lodge and
        three clusters of upscale “tentalows” and yurts, including one deluxe
        camp right on the beach. Outdoor activities run the gamut: horseback
        riding, ocean kayaking, excellent mountain biking, clay shooting,
        hiking. 60 tentalows, 20 yurts, 22 lodge rooms.
        Lanai
        Hotel Lanai $–$$ 828 Lanai Avenue, Lanai City, HI 96793;
        Tel. (808) 565-7211 or (800) 795-7211; fax (808) 565-6450;
        <www.onlanai.com>. A 1923 pineapple plantation guesthouse for
        company executives, this country inn near the town square caters to
        outdoor enthusiasts. Rooms are quaint, with no air-conditioning.
        Breakfast included. 11 rooms.
        Lodge at Koele $$$$ P.O. Box 310, Lanai City, HI 96793;
        Tel. (808) 565-7300 or (800) 321-4666; fax (808) 565-4561;
        <www.lanai-resorts.com>. Lanai’s upcountry, very upscale resort
        is appointed like an Old English estate, with writing desks,
        four-poster beds, library, music room. The 21-acre grounds include a
        croquet court, lawn bowling, horseback-riding stables, formal gardens,
        and a world-class golf course. 102 rooms.
        Manele Bay Hotel $$$$ P.O. Box 310, Lanai City, HI 96793;
        Tel. (808) 565-7700 or (800) 321-4666; fax (808) 565-2483;
        <www.lanai-resorts.com>. A full-service, quite plush resort on
        Lanai’s finest beach (Hulopoe), the Manele Bay Hotel offers water
        sports, golf, tennis, a spa, and jeep tours. 250 rooms.


```
  
Once again, a good use for this is searching, as that is what grep is all about. In the third example, we are able to see all the files/directories that aren't text files by using find to get all the directories and invert the search result on ```.txt```. In the fourth example, I wasn't able to demonstrate it well due to how the files are structures, but we are basically trying to find all the places not in Honolulu, and these places are the ones where we can see the name and address and not just the description. We did this by searching for ```Honolulu``` and inverting the search results, since if they are in Honolulu, the name's line which contains the address will have the word ```Honolulu``` in it.
  
## Command Line Option: ```-l```
This line outputs the matching file instead of the matching line. In this example, we will be using the file directory linked above, called ```written_2```.  
  
Command: ```grep -l Lucayans written_2/travel_guides/berlitz2/*.txt```  
Output:  
```
written_2/travel_guides/berlitz2/Bahamas-History.txt
```  
  
Command: ```grep -rl Lucayans written_2```  
Output:  
```
written_2/travel_guides/berlitz2/Bahamas-History.txt
```  
  
Although these two might have the same outputs, the first one only searches through the text files in a directory while the second one recursively searches through all the files in a given directory, in this case, ```written_2```. The ```-l``` is useful in a large directory where not only does the matching line matter, but also the file in which the line is in.
  
## Command Line Option: ```-n```
This line adds the line number in front of the matching line.  
  
Command: ```grep -in banana fruits.txt```  
Output:  
```
3:Bananas are yellow.
4:The bananas are sweet.
```  
  
Command: ```grep -in apple fruits.txt```  
Output:  
```
5:Apples are red or green.
6:Some apples are sweet, some apples are sour.
```  
  
Command: ```grep -rn Lucayans written_2```  
Output:  
```
written_2/travel_guides/berlitz2/Bahamas-History.txt:6:Centuries before the arrival of Columbus, a peaceful Amerindian people who called themselves the Luccucairi had settled in the Bahamas. Originally from South America, they had traveled up through the Caribbean islands, surviving by cultivating modest crops and from what they caught from sea and shore. Nothing in the experience of these gentle people could have prepared them for the arrival of the Pinta, the Niña, and the Santa Maria at San Salvador on 12 October 1492. Columbus believed that he had reached the East Indies and mistakenly called these people Indians. We know them today as the Lucayans. Columbus claimed the island and others in the Bahamas for his royal Spanish patrons, but not finding the gold and other riches he was seeking, he stayed for only two weeks before sailing towards Cuba.
written_2/travel_guides/berlitz2/Bahamas-History.txt:7:The Spaniards never bothered to settle in the Bahamas, but the number of shipwrecks attest that their galleons frequently passed through the archipelago en route to and from the Caribbean, Florida, Bermuda, and their home ports. On Eleuthera the explorers dug a fresh-water well — at a spot now known as “Spanish Wells” — which was used to replenish the supplies of water on their ships before they began the long journey back to Europe with their cargoes of South American gold. As for the Lucayans, within 25 years all of them, perhaps some 30,000 people, were removed from the Bahamas to work — and die — in Spanish gold mines and on farms and pearl fisheries on Hispaniola (Haiti), Cuba, and elsewhere in the Caribbean.
```  
  
Command: ```grep -rn Jimbaran written_2```  
Output:  
```
written_2/travel_guides/berlitz2/Bali-WhatToDo.txt:12:Jimbaran Bay has a sailing club, and you can windsurf from most of the resort beaches: Equipment can be rented at Kuta, Benoa, Lovina, and Sanur. Conditions are not ideal for beginners, though. Falling off on to coral is not only painful, it can also harm the fragile ecosystem of the reef.
written_2/travel_guides/berlitz2/Bali-WhereToGo.txt:30:Referred to simply as Bukit (or “the hill”) by the Balinese, the peninsula south of the airport is almost a separate island. Most of it is a windswept limestone plateau, entirely unlike the rest of southern Bali. Too dry for rice, its rocky soil is used to grow beans, cassava, and peanuts. In the past, few people lived here, and the only reason they might visit was to worship at one of the temples and particularly at Uluwatu on the cliffs at the western tip. In the 1980s the government decided to develop an exclusive resort zone at Nusa Dua, on the eastern side of the Bukit peninsula. Another site on the peninsula, set aside for use by the people of Bali, but also of interest to tourists, is the Garuda Wisnu Kencana Cultural Park, at Ungasan, Jimbaran. Its centerpiece, currently under construction, will be an enormous statue of Vishnu the Protector that will rival New York’s Statue of Liberty in size.
written_2/travel_guides/berlitz2/Bali-WhereToGo.txt:33:Jimbaran Beach is a great arc of sand facing a sheltered bay south of the airport, shared by a handful of resort hotels and a fishing village. More hotels are rapidly going up on a new access road that runs parallel to the coast here. Look for the sign to Uluwatu on the road from the airport toward Nusa Dua — you have to pass it and then make a U-turn. Jimbaran Beach is famous for its restaurants that serve fresh grilled fish and seafood on the beach.
```  
  
This one is more useful in really long files. Instead of having to search through the file for where ```Lucayans``` is, we can instead rely on the line number to help us. This is the same for the fourth example with the word ```Jimbaran```.

## Command Line Option: ```-o```
This line outputs the matched parts of a matching line.  
  
Command: ```grep -ino banana fruits.txt```  
Output:  
```
3:Banana
4:banana
```  
  
Command: ```grep -ino orange fruits.txt```  
Output:  
```
1:Orange
2:orange
2:orange
```  
  
Command: ```grep -rno Lucayans written_2```  
Output:  
```
written_2/travel_guides/berlitz2/Bahamas-History.txt:6:Lucayans
written_2/travel_guides/berlitz2/Bahamas-History.txt:7:Lucayans
```  
  
Command:  
```
grep -rno Jimbaran written_2 > grep_result.txt
cat grep_result.txt
wc -l grep_result.txt
```  
Output:  
```
written_2/travel_guides/berlitz2/Bali-WhatToDo.txt:12:Jimbaran
written_2/travel_guides/berlitz2/Bali-WhereToGo.txt:30:Jimbaran
written_2/travel_guides/berlitz2/Bali-WhereToGo.txt:33:Jimbaran
written_2/travel_guides/berlitz2/Bali-WhereToGo.txt:33:Jimbaran
4 grep_result.txt
```  
  
Using the same examples as the previous option, although it may seem like it is just outputting what we already know, we can use this to see how many times it appears. Usually we will only be able to see the line it appears, and if we are just counting the number of lines, since it may appear more than once in each line, it may be inaccurate so this will help with that. As in the fourth example, we can see that it appears four times and the lines and files in which it appears.
  
## Uses for different Command Line Options
[numOfOccurences.sh](https://github.com/jyunawan/cse15l-lab-reports/tree/main/Lab3/numOfOccurences.sh):  
```
grep -io $1 $2 > grep_result.txt
echo "Occurences:"
wc -l grep_result.txt
```  
Usage: ```numOfOccurences.sh [phrase to search] [file to search in]```  
  
[locationInDirectory.sh](https://github.com/jyunawan/cse15l-lab-reports/tree/main/Lab3/locationInDirectory.sh):  
```
grep -rl $1 $2 | xargs -d"\n" grep -n $1
```  
Usage: ```locationInDirectory.sh [phrase to search] [directory to search in]``` 
Extra Notes: In this case, ```xargs``` takes the output from the first command and uses it as a input for the second command. The ```-d``` changes the delimiter from a default of space into ```\n``` as the output of grep is separated by ```\n```.

