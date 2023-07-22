//
//  ZooApiManager+Stub.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/6/8.
//

import Foundation

extension APIManager.EndPoint{
    var stub :Data{
        let string:String
        switch self {
        case .parkInformation:
            string = """
{
    "result": {
        "limit": 20,
        "offset": 0,
        "count": 16,
        "sort": "",
        "results": [
            {
                "_id": 1,
                "_importdate": {
                    "date": "2022-05-09 14:47:38.971190",
                    "timezone_type": 3,
                    "timezone": "Asia/Taipei"
                },
                "e_no": "1",
                "e_category": " 戶外區 ",
                "e_name": " 臺灣動物區 ",
                "e_pic_url": "http://www.zoo.gov.tw/iTAP/05_Exhibit/01_FormosanAnimal.jpg",
                "e_info": " 臺灣位於北半球，北迴歸線橫越南部，造成亞熱帶溫和多雨的氣候。又因高山急流、起伏多樣的地形，因而在這蕞爾小島上，形成了多樣性的生態系，孕育了多種不同生態習性的動、植物，豐富的生物物種共存共榮於此，也使臺灣博得美麗之島「福爾摩沙」的美名。臺灣動物區以臺灣原生動物與棲息環境為展示重點，佈置模擬動物原生棲地之生態環境，讓動物表現如野外般自然的生活習性，引導民眾更正確地認識本土野生動物，為園區環境教育的重要據點。藉由提供動物寬廣且具隱蔽的生態環境，讓動物避開人為過度的干擾，並展現如野外般自然的生活習性和行為。展示區以多種臺灣的保育類野生動物貫連成保育廊道，包括臺灣黑熊、穿山甲、歐亞水獺、白鼻心、石虎、山羌等。唯有認識、瞭解本土野生動物，才能愛護、保育牠們，並進而珍惜我們共同生存的這塊土地！",
                "e_memo": "",
                "e_geo": "MULTIPOINT ((121.5805931 24.9985962))",
                "e_url": "https://youtu.be/QIUbzZ-jX_Y"
            }
        ]
    }
}
"""
        case .animalData:
            string = #"""
{"result":{"limit":60,"offset":0,"count":272,"sort":"","results":[{"_id":1,"_importdate":{"date":"2022-12-23 14:05:14.668579","timezone_type":3,"timezone":"Asia\/Taipei"},"a_name_ch":"大貓熊","a_summary":"","a_keywords":"","a_alsoknown":"貓熊、熊貓","a_geo":"MULTIPOINT ((121.5831587 24.9971109))","a_location":"新光特展館（大貓熊館）","a_poigroup":"","a_name_en":"Giant Panda","a_name_latin":"Ailuropoda melanoleuca","a_phylum":"脊索動物門","a_class":"哺乳綱","a_order":"食肉目","a_family":"熊科","a_conservation":"易危(VU)","a_distribution":"目前僅存於中國四川、甘肅和陜西三省境內。","a_habitat":"海拔2600-3,000公尺的高山中，會因季節的變化而改變其居住的海拔高度，一般在乾淨的活水源和竹林發育良好的地區活動。","a_feature":"1、 成熊身長約為120-180公分，體重約80-120公斤，幼熊出生時體長約10公分，體重約僅有150~200公克。\n 2、 具有強壯有力的四肢：後腳內八字撇，有利於在密林中走動時撥開竹子。\n 3、 腕骨特化成的偽拇指(不具備關節)，使得牠們能俐落地取食竹子。\n 4、 掌心覆有毛，使得大貓熊能夠在寒冷的雪地上行走。\n 5、大貓熊身體顏色主要為黑白兩色。耳朵、眼斑、鼻頭、肩背部和四肢為黑色，其餘部位為白色。相對比例較小的黑色耳朵有減少熱量散失的功能。","a_behavior":"1、獨居的動物，除了交配季節或雌性的育幼時期，牠們都是獨自居住的。\r\n2、最活躍的時間在早晨和黃昏，但竹子所含熱量低，為減少能量的消耗，牠們每天的睡眠時間約10小時，剩餘時間則大多在覓食和進食。","a_diet":"大貓熊以竹為主食(佔日糧中大約99%)","a_crisis":"過去大貓熊棲息地裡的竹林竹種較為單一，1983年曾發生棲地內箭竹週期性大規模開花枯死而有大貓熊餓死的情形，竹林一旦開花，須再經多年後才能恢復舊觀。另外大貓熊棲息地的破碎化，使得牠們無法遷徙至其他有竹子的地方，加劇了這個原是林地自然演替的危害。也因棲地破碎化，部分種群因數量規模小，基因的窄化以及無法延續也成為另一嚴重問題。","a_interpretation":"","a_theme_name":"YA!大貓熊-臺北大貓熊保育網","a_theme_url":"http:\/\/newweb.zoo.gov.tw\/panda\/","a_adopt":"","a_code":"Panda","a_pic01_alt":"大貓熊「團團」和「圓圓」","a_pic01_url":"http:\/\/www.zoo.gov.tw\/iTAP\/03_Animals\/PandaHouse\/Panda_Pic01.jpg","a_pic02_alt":"「圓仔」跟媽媽互動","a_pic02_url":"http:\/\/www.zoo.gov.tw\/iTAP\/03_Animals\/PandaHouse\/Panda_Pic02.jpg","a_pic03_alt":"大貓熊「圓仔」","a_pic03_url":"http:\/\/www.zoo.gov.tw\/iTAP\/03_Animals\/PandaHouse\/Panda_Pic03.jpg","a_pic04_alt":"大貓熊「團團」和「圓圓」","a_pic04_url":"http:\/\/www.zoo.gov.tw\/iTAP\/03_Animals\/PandaHouse\/Panda_Pic04.jpg","a_pdf01_alt":"「遇見大貓熊」學習單(4.2MB)","a_pdf01_url":"http:\/\/www.zoo.gov.tw\/iTAP\/03_Animals\/PandaHouse\/Panda_PDF01.pdf","a_pdf02_alt":"「遇見大貓熊」解答(1.18MB)","a_pdf02_url":"http:\/\/www.zoo.gov.tw\/iTAP\/03_Animals\/PandaHouse\/Panda_PDF02.pdf","a_voice01_alt":"雌大貓熊咩叫聲","a_voice01_url":"http:\/\/mediasys.taipei.gov.tw\/tcg\/service\/KMStorage\/355\/894E598B-8A9F-BAA8-206D-8DF52A8C5763\/Panda_Voice01.mp3","a_voice02_alt":"雌雄大貓熊交配時的叫聲","a_voice02_url":"http:\/\/mediasys.taipei.gov.tw\/tcg\/service\/KMStorage\/355\/3FAC21EE-A863-6E2C-BF12-4E6FEF67BDE\/Panda_Voice02.mp3","a_voice03_alt":"山豬老大ABC第13集Bears","a_voice03_url":"http:\/\/mediasys.taipei.gov.tw\/tcg\/service\/KMStorage\/355\/ADB04074-6156-5C7C-1630-B4E88BAD5147\/Panda_Voice03.mp3","a_vedio_url":"http:\/\/www.youtube.com\/playlist?list=PLWYak5Af5-DvboTzxQYeg7aKYA9UHYwSf","a_update":"#","a_cid":"1"}]}}
"""#
        case .plantInformation:
            string = """
{
    "result": {
        "limit": 20,
        "offset": 0,
        "count": 220,
        "sort": "",
        "results": [
            {
                "_id": 1,
                "﻿F_Name_Ch": " 九芎 ",
                "F_Summary": "",
                "F_Keywords": "",
                "F_AlsoKnown": " 苞飯花、拘那花、小果紫薇、南紫薇、猴不爬、怕癢樹、南紫薇、九荊、馬鈴花、蚊仔花 ",
                "F_Geo": "MULTIPOINT ((121.5804577 24.9979216),  (121.5805328 24.9959671),  (121.5836763 24.9957094),  (121.5894029 24.9951126),  (121.5899205 24.9945669))",
                "F_Location": " 臺灣動物區；蟲蟲探索谷；熱帶雨林區；鳥園；兩棲爬蟲動物館 ",
                "F_Name_En": "Subcostate Crape Myrtle",
                "F_Name_Latin": "Lagerstroemia subcostata",
                "F_Family": " 千屈菜科 Lythraceae",
                "F_Genus": " 紫薇屬 Lagerstroemia",
                "F_Brief": " 分布於中低海拔森林及長江以南的地區，為台灣的原生樹種。主要生長在潮濕的崩塌地，有吸水保持土壤之特性，所以是良好的水土保持樹種。",
                "F_Feature": " 紅褐色的樹皮剝落後呈灰白色，樹幹光滑堅硬。葉有極短的柄，長橢圓形或卵形，全綠，葉片兩端尖，秋冬轉紅。夏季 6～8 月開花，花冠白色，花數甚多而密生於枝端，花為圓錐花序頂生，花瓣有長柄，邊緣皺曲像衣裙的花邊花絲長短不一。果實為蒴果，橢圓形約 6-8 公厘，種子有翅。",
                "F_Function＆Application": "1. 優良薪炭材：木質堅硬耐燒，是臺灣優良的薪炭材之一。\\n2. 水土保持植栽：可栽植於河岸及邊坡供水土保持。\\n3. 農具用材：木質堅硬，乾燥後不太會反翹，是做農具的用材。\\n4. 食用性：花、根入藥，味淡微苦，敗毒散瘀，花蕾味苦有清香，可生食。葉子是長尾水青蛾幼蟲的食草。",
                "F_Code": "",
                "F_Pic01_ALT": " 九芎果實 ",
                "F_Pic01_URL": "http://www.zoo.gov.tw/iTAP/04_Plant/Lythraceae/subcostata/subcostata_1.jpg",
                "F_Pic02_ALT": "",
                "F_Pic02_URL": "",
                "F_Pic03_ALT": "",
                "F_Pic03_URL": "",
                "F_Pic04_ALT": "",
                "F_Pic04_URL": "",
                "F_pdf01_ALT": "",
                "F_pdf01_URL": "",
                "F_pdf02_ALT": "",
                "F_pdf02_URL": "",
                "F_Voice01_ALT": "",
                "F_Voice01_URL": "",
                "F_Voice02_ALT": "",
                "F_Voice02_URL": "",
                "F_Voice03_ALT": "",
                "F_Voice03_URL": "",
                "F_Vedio_URL": "",
                "F_Update": "2017/9/4",
                "F_CID": ""
            }
        ]
    }
}
"""
        }
        
        return Data(string.utf8)
    }
    
    
    
}
