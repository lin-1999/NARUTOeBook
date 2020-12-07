//
//  dataSet.swift
//  NARUTOeBook
//
//  Created by lin1999 on 2020/10/17.
//

import SwiftUI

struct character {
    var icon: String
    var name: String
    var description: String
}

struct level {
    var name: String
    var description: String
}

struct term {
    var name: String
    var contents: [String]
    var details: [String]
}

let characters: [character] = [
    character(icon: "Naruto", name: "漩渦鳴人", description: "男主角。火之國木葉隱村的忍者，四代目火影波風水門和漩渦玖辛奈之子，六道仙人次子阿修羅的查克拉轉世者。剛出生時父母為保護村子而犧牲，並將尾獸“九尾”封印在鳴人體內。成為孤兒的鳴人從小被村民歧視，但在唯一認同他的老師海野伊魯卡以及三代目火影猿飛日斬的鼓勵下有了要成為火影的夢想，讓所有人都認同他的存在。成為忍者後，和旗木卡卡西、宇智波佐助以及春野櫻組成第七班進行各種任務。"),
    character(icon: "Sasuke", name: "宇智波佐助", description: "火之國木葉隱村宇智波一族的天才忍者，六道仙人長子因陀羅的查克拉轉世者。年幼時因目睹宇智波一族被哥哥鼬所殲滅，從而走上復仇之路。在終末之谷與漩渦鳴人展開激戰，將鳴人打敗後叛離木葉前去追隨大蛇丸。三年後，佐助將大蛇丸吸收，並成功打敗宇智波鼬，但從帶土口中得知了宇智波鼬的滅族真相，於是決定摧毀木葉。後來，佐助與穢土後的鼬相遇並協助鼬打敗藥師兜，因為鼬的話而思想產生了波動，因此，佐助的想法再次發生了變化，為了進一步了解忍者、家族、哥哥的過去，佐助復活大蛇丸，並與穢土後的四位火影進行交談，在聽完他們的回答後決定繼承鼬的意志守護木葉，並希望成為火影改變木葉的政治體制。"),
    character(icon: "Sakura", name: "春野櫻", description: "女主角。新一代醫療忍者，五代目火影綱手的弟子，與漩渦鳴人、宇智波佐助隸屬於旗木卡卡西領導的第七班。原本性格柔弱任性，在木葉忍者學校筆試成績不錯。在佐助叛離木葉村後，拜第五代火影綱手為師，學會優秀的體術，怪力和醫療忍術。第四次忍界大戰中作為忍者聯軍第三部隊以及醫療後勤部隊的一員。具有良好的查克拉控制能力與清晰的頭腦，擅長體術怪力與醫療忍術以及解除幻術（擁有幻術天賦，早期設定是幻術型忍者）。"),
    character(icon: "Kakashi", name: "旗木卡卡西", description: "火之國木葉隱村的精英上忍，原木葉暗部成員，四代目火影波風水門的弟子，第七班隊長，漩渦鳴人、宇智波佐助、春野櫻的老師。年僅12歲就成為上忍的天才忍者，後左眼移植宇智波帶土的寫輪眼，因使用寫輪眼複製了上千種忍術而被稱為“拷貝忍者”、“寫輪眼卡卡西”，其名號響徹各國。"),
    character(icon: "Shikamaru", name: "奈良鹿丸", description: "火之國木葉隱村的上忍，擁有出眾的應敵策略，頭腦冷靜、隨機應變，IQ超過200。絕招是“影子模仿術”，他的性格雖然消極了點，但是想要平靜的生活，擅長使用奈良一族秘傳忍術。與父親奈良鹿久一樣深受歷代火影信任。第四次忍界大戰結束後，先後擔任六代目火影·旗木卡卡西與七代目火影·漩渦鳴人的得力親信。"),
    character(icon: "Ino", name: "山中井野", description: "木葉忍者村的上忍，阿斯瑪所領導的第十班的成員，隊友是奈良鹿丸和秋道丁次，繼承了山中一族的獨特秘術心轉身之術，能讓自己的精神佔據對方身體，控制對方內心。同時上進心很強，成功學會醫療忍術。第四次忍界大戰中作為忍者聯軍第五部隊（戰鬥特別部隊）的一員。忍界大戰結束若干年後，與佐井結婚並育有一子山中井陣。"),
    character(icon: "Hinata", name: "日向雛田", description: "火之國木葉隱村的忍者，木葉名門日向一族宗家的嫡長女，大筒木羽村的後代之一，擁有純度極高的白眼，被舍人和大筒木一族的亡魂們稱為“白眼的公主”。從小喜歡主角漩渦鳴人。原本是個性格柔弱的女孩，但是在鳴人的影響下性格逐漸變得堅強，並漸漸成長為一名優秀的女忍者。故事最後成為鳴人的妻子，並育有一子一女。"),
    character(icon: "Rock", name: "李洛克", description: "火之國木葉忍者村的忍者，自稱“木葉美麗的蒼藍野獸”。小李是個“笨鳥先飛”型的熱血少年，性格單純而又熱血，一心想成為一名優秀的忍者，並一直為此努力奮鬥。他不會忍術和幻術，也沒有與生俱來的特殊技能，但他有堅韌不拔的精神，面對困難從不畏懼。他起早貪黑堅持訓練，付出了比別人多幾十倍的努力，縱然一次次失敗，卻始終堅信只要足夠努力，照樣可以成為優秀的忍者。大結局中已成為上忍。"),
    character(icon: "Neji", name: "日向寧次", description: "火之國木葉隱村的上忍，由邁特·凱所領導的第三班成員，隊友是李洛克和天天。木葉名門日向一族分家的成員，日向日差之子，日向雛田的堂兄。被稱為日向一族的天才，雖然被宗家限定了其血繼限界白眼的能力，但是他憑藉自己的天賦繼承了宗家才可以使用的八卦掌等體術。在中忍考試輸給鳴人後對命運的看法有所改觀，不再認為命運是無法改變的。第四次忍界大戰中，寧次為了保護鳴人和雛田，以自己的身體抵擋十尾的扦插之術而壯烈犧牲。"),
    character(icon: "Orochimaru", name: "大蛇丸", description: "原火之國木葉隱村的“三忍”之一，與自來也、綱手同為第三代目火影猿飛日斬的弟子。具有極其強大的實力和不死之身。擅長研究忍術並渴望得到寫輪眼。本身野心極大，由於目睹了太多人的死亡、知道生命是脆弱的而誤入歧途，他認為人體中蘊含著一生都無法使用的力量，因此他想獲得長生不老從而學習所有忍術，掌握世間的真理。其野心被多次粉碎，在佐助與鼬一戰中被鼬的十拳劍封印。後在第四次忍界大戰中，從御手洗紅豆和藥師兜的身上看見了藥師兜的失敗，徹底醒悟。之後被佐助復活，與四位火影和鷹小隊前往戰場支援忍者聯軍。")
    ]

let ninjaLevel: [level] = [
    level(name: "影", description: "只有五大國所屬忍者村的首領才可以擁有的稱號（動畫原創劇情中增加了星影），是“村子中最偉大的忍者”。五影的稱號分別是：火影、風影、水影、土影、雷影。")
]

let terms: [term] = [
    term(name: "忍者等級", contents: ["影", "上忍", "特別上忍", "中忍", "下忍", "叛忍", "醫療忍者"], details: ["只有五大國所屬忍者村的首領才可以擁有的稱號（動畫原創劇情中增加了星影），是“村子中最偉大的忍者”。五影的稱號分別是：火影、風影、水影、土影、雷影。", "村子的精英人物，不僅能力拔群，而且還可以參與決定村子方針的上忍會議。通常在難度極高的A級任務出面，有時候還會參加S級的任務。成為上忍的條件是要得到一國的首腦以及其他上忍們的推薦或請求。", "與全能型發展的上忍不同，他們是在某些方面具有獨特才能及發展的忍者，實力居中忍與上忍之間。從事專門的研究，如：教育、研發、諜報等等。需具有特別技藝之忍者才能勝任。", "相當於小隊隊長的階級。一般情況下，只被允許接受B級、C級任務。成為中忍的條件是通過中忍考試，並在考試中得到認可。", "可以算是實習生。做最簡單的C、D級任務。從忍者學校畢業以後，就可以成為下忍（但通常還需要得到擔當隊長的上忍的承認）", "出於各種原因，叛逃出了自己的忍者村。他們會受到原忍村的通緝，度過逃亡生活。", "使用醫療忍術治療同伴的忍者。"]),
    term(name: "忍者組織", contents: ["曉", "暗部"], details: ["由10名實力極強的忍者結成的忍者組織。他們大多是各國通緝的重犯，以捕獲尾獸為目標。曉的成員都身穿上面印有紅雲的黑色長袍，頭戴可以遮住面孔的斗笠，手上戴著印有各自代號的戒指，護額上有一道代表他們已經叛離自己村子的划痕。", "全稱“暗殺戰術特殊部隊”，直接歸屬影管理的精銳部隊，專門負責處理特殊任務，並協助上忍、特別上忍和中忍執行任務。所有資料均屬保密。由於暗部直屬影，所以工作亦由影委派，一切行動及功績都不會公開。"]),
    term(name: "任務等級劃分", contents: ["超S級", "S級", "A級", "B級", "C級", "D級"], details: ["關係跨國等級的特機密任務事項。因他國請求以及個人需求而加入。", "關係國家等級的機密事項。因他國請求而加入戰爭。百萬兩的獎賞以上的任務。暗殺重要人士、偷取機密文件等。", "關係國家或村里動向的任務。因他國請求而加入戰爭。十五萬兩至百萬兩之間的獎賞的任務。護衛重要人士、討伐忍者部隊等。", "关系个人的任务，因个人请求而加入。五万两至十五万两之间的奖赏的任务。护卫人士，其中有敌对忍者（中忍以下）。", "關係個人的任務，因個人請求而加入。一萬兩至五萬兩之間的獎賞的任務。護衛人士（無戰鬥情況），送機密文件等等。", "非常瑣碎的任務，因個人請求而加入。五百兩至一萬兩之間的獎賞的任務。從找寵物到撿垃圾等等。"]),
    term(name: "五大國", contents: ["火之國", "風之國", "水之國", "雷之國", "土之國"], details: ["火之國地處丘陵地帶，氣候溫和，陽光充足。該國耕地充足，經濟發達，人口眾多。由於地處大陸的中心部分，是各國交流的交通要道。同時火之國擁有最強大的忍者村——木葉隱村，因此一直以來是五大國中最有影響力的國家。", "風之國是火影忍者世界中疆土最大的國家。該國地處荒漠，乾旱少雨，國民居住在砂子構建的特殊建築物內。風之國人口稀少，且和火之國關係密切。風之國的忍者村是砂隱村，該村以傀儡術聞名火影世界。", "水之國是四面環海的島國，主要為山脈和零星的小島。湖泊多，氣候涼爽、多霧。冬季下雪而且很冷。國民居住在主島和四周的小島上。水之國的忍者村是霧隱村。是五大國中面積最小的一個。該國在火影世界以繁多的血繼限界種類著稱。", "雷之國有高聳入雲的山峰，迴旋著震耳欲聾的雷聲。中央山脈上的河流在入海口處製造出曲折的海岸線。國內有很多溫泉地區。雷之國的忍者村是雲隱村。該國的人柱力都擅長與尾獸溝通，為鳴人學會控制尾獸埋下伏筆。", "土之國國內大半都是荒涼岩壁，國內的岩石像是沿著國境存在著，因此阻擋了土之國與其他國家的交通。另外，北方吹來的風會越過高山，將國內細小岩石吹到其他國家，名為“岩石雨”的自然現象非常有名。土之國的忍者村是岩隱村。"])
]
