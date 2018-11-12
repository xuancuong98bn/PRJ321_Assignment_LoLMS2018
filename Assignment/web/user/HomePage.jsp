<%-- 
    Document   : HomePage
    Created on : Nov 8, 2018, 6:16:31 AM
    Author     : MTC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Google Tag Manager -->
        <script type="text/javascript" async="" src="./assetss/linkid.js"></script>
        <script src="./assetss/ctcall.php" id="c3ct5934" type="text/javascript"></script>
        <script type="text/javascript" async="" src="./assetss/analytics.js"></script>
        <script type="text/javascript" async="" src="./assetss/js"></script>
        <script async="" src="./assetss/fbevents.js"></script>
        <script type="text/javascript" async="" src="./assetss/hotjar-448334.js"></script>
        <script type="text/javascript" async="" src="./assetss/analytics.js"></script>
        <script async="" src="./assetss/gtm.js"></script>
        <!-- <script>(function (w, d, s, l, i) { w[l] = w[l] || []; w[l].push({ 'gtm.start': new Date().getTime(), event: 'gtm.js' }); var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f); })(window, document, 'script', 'dataLayer', 'GTM-N98J');</script> -->
        <!-- End Google Tag Manager -->
        <title>Home Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta property="og:title" content="Home Page">
        <meta property="og:type" content="website">
        <!-- <meta property="og:url" content="http://www.lolesports.com/en_US/teams" /> -->
        <!-- <meta property="og:image" content="https://lolstatic-a.akamaihd.net/frontpage/apps/prod/rg-worlds-2018-meet-the-teams/en_US/488efe4a77c4d5f1141b623c4a661305c5e90fb3/assets/img/og-image.jpg"> -->
        <link rel="stylesheet" href="./assetss/main.css">
        <link rel="stylesheet" href="./assetss/sub.css">
        <link rel="stylesheet" href="./assetss/lol-kit.css">
        <!-- <link rel="icon" href="https://lolstatic-a.akamaihd.net/frontpage/apps/prod/lolesports_feapp/en_US/87d2d09da34061af84b9f7f753784c27d7bb0c1c/assets/img/site-logo-small.png"> -->
        <link href="./assetss/css" rel="stylesheet">
        <style></style>
        <script async="" src="./assetss/modules-239439752d7ca7c58c060cde4a84a63c.js"></script>
        <style type="text/css">
            iframe#_hjRemoteVarsFrame {
                display: none !important;
                width: 1px !important;
                height: 1px !important;
                opacity: 0 !important;
                pointer-events: none !important;
            }
        </style>
        <script type="text/javascript" src="./assetss/en_US-defer-cookie-policy-v2.js"></script>
        <script type="text/javascript" src="./assetss/ping-0.1.663.min.js"></script>
        <style type="text/css">

        </style>
        <script type="text/javascript" src="./assetss/notice"></script>
    </head>

    <body class="en_US en riotbar-present" style="margin-top: 52px;">
        <!-- Google Tag Manager (noscript) -->
        <noscript>
        <!-- <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N98J" height="0" width="0" style="display:none;visibility:hidden"></iframe> -->
        </noscript>
        <!-- End Google Tag Manager (noscript) -->
        <div class="main">
            <div id="background-images" style="transform: translateX(0)">
                <img id="title-page-background" src="./assetss/bg-left.jpg">
            </div>
            <div id="title-page" class="active">
                <img id="logo" src="./assetss/logo.png" alt="" width="246" height="336">
                <h1 id="title">MEET THE TEAMS</h1>
                <img id="logos" src="./assetss/team-logos.png" alt="">
            </div>

            <c:set var="idTeam" value="-1"/>
            <c:set var="idPlayer" value="0"/>
            <c:forEach var="t" items="${listTeam}">
                <c:set var="idTeam" value="${idTeam+1}"/>
                <div id="team${idTeam}" class="team-page offstage-right">
                    <img class="team" src="${t.getLinkTeamImg()}">
                    <div class="names">
                        <div class="name-container">
                            <div class="name-top">${listPlayer.get(idPlayer).getName()}</div>
                            <c:set var="idPlayer" value="${idPlayer+1}"/>
                        </div>
                        <div class="name-container">
                            <div class="name-jungle">${listPlayer.get(idPlayer).getName()}</div>
                            <c:set var="idPlayer" value="${idPlayer+1}"/>
                        </div>
                        <div class="name-container">
                            <div class="name-mid">${listPlayer.get(idPlayer).getName()}</div>
                            <c:set var="idPlayer" value="${idPlayer+1}"/>
                        </div>
                        <div class="name-container">
                            <div class="name-adc">${listPlayer.get(idPlayer).getName()}</div>
                            <c:set var="idPlayer" value="${idPlayer+1}"/>
                        </div>
                        <div class="name-container">
                            <div class="name-support">${listPlayer.get(idPlayer).getName()}</div>
                            <c:set var="idPlayer" value="${idPlayer+2}"/>
                        </div>
                    </div>
                </div>
            </c:forEach>

            <c:set var="idTeam" value="-1"/>
            <div id="crests-parent">
                <c:forEach var="t" items="${listTeam}">
                    <c:set var="idTeam" value="${idTeam+1}"/>
                    <div id="team${idTeam}-crest" class="offstage-right">
                        <img class="crest" src="${t.getLinkLogo()}">
                    </div>
                </c:forEach>
            </div>
            <div id="selection-clickout"></div>
            <div id="page-info-parent" style="display: none;">
                <div id="page-selection">
                    <div id="page-selection-header">
                        <c:set var="idTeam" value="-1"/>
                        <c:forEach var="t" items="${listTeam}">
                            <c:set var="idTeam" value="${idTeam+1}"/>
                            <div id="team${idTeam}-header" style="display: none;">
                                <span>${t.getRegionName()}</span></div>
                            </c:forEach>
                    </div>
                    <div id="page-selection-dropdown">
                        <div id="team0-selection" data-league="team0">
                            <span>LCK - </span>KT ROLSTER </div>
                        <div id="team1-selection" data-league="team1">
                            <span>LCK - </span>AFREECA FREECS</div>
                        <div id="team2-selection" data-league="team2">
                            <span>LCK - </span>GEN.G ESPORTS </div>
                        <div class="bar"></div>
                        <div id="team3-selection" data-league="team3">
                            <span>LPL - </span>ROYAL NEVER GIVE UP</div>
                        <div id="team4-selection" data-league="team4">
                            <span>LPL - </span>INVICTUS GAMING</div>
                        <div id="team5-selection" data-league="team5">
                            <span>LPL - </span>EDWARD GAMING</div>
                        <div class="bar"></div>
                        <div id="team6-selection" data-league="team6">
                            <span>EU LCS - </span>FNATIC </div>
                        <div id="team7-selection" data-league="team7">
                            <span>EU LCS - </span>TEAM VITALITY </div>
                        <div id="team8-selection" data-league="team8">
                            <span>EU LCS - </span>G2 ESPORTS </div>
                        <div class="bar"></div>
                        <div id="team9-selection" data-league="team9">
                            <span>NA LCS - </span>TEAM LIQUID </div>
                        <div id="team10-selection" data-league="team10">
                            <span>NA LCS - </span>100 THIEVES </div>
                        <div id="team11-selection" data-league="team11">
                            <span>NA LCS - </span>CLOUD9 </div>
                        <div class="bar"></div>
                        <div id="team12-selection" data-league="team12">
                            <span>LMS - </span>FLASH WOLVES </div>
                        <div id="team13-selection" data-league="team13">
                            <span>LMS - </span>MAD TEAM </div>
                        <div id="team14-selection" data-league="team14">
                            <span>LMS - </span>G-REX </div>
                        <div class="bar"></div>
                        <div id="team15-selection" data-league="team15">
                            <span>CBLOL - </span>KABUM! E-SPORTS</div>
                        <div class="bar"></div>
                        <div id="team16-selection" data-league="team16">
                            <span>LCL - </span>GAMBIT ESPORTS</div>
                        <div class="bar"></div>
                        <div id="team17-selection" data-league="team17">
                            <span>LJL - </span>DETONATION FOCUSME</div>
                        <div class="bar"></div>
                        <div id="team18-selection" data-league="team18">
                            <span>LLN - </span>INFINITY ESPORTS</div>
                        <div class="bar"></div>
                        <div id="team19-selection" data-league="team19">
                            <span>CLS - </span>KAOS LATIN GAMERS</div>
                        <div class="bar"></div>
                        <div id="team20-selection" data-league="team20">
                            <span>OPL - </span>DIRE WOLVES </div>
                        <div class="bar"></div>
                        <div id="team21-selection" data-league="team21">
                            <span>TCL - </span>BAHÇEŞEHIR SUPERMASSIVE</div>
                        <div class="bar"></div>
                        <div id="team22-selection" data-league="team22">
                            <span>SEA - </span>ASCENSION GAMING</div>
                        <div class="bar"></div>
                        <div id="team23-selection" data-league="team23">
                            <span>VCS - </span>PHONG VU BUFFALO</div>
                    </div>
                </div>
                <div id="team0-info" class="page-info" style="display: none;">
                    <div class="team-name" title="KT ROLSTER">KT ROLSTER</div>
                    <div class="team-info tall mtt-p">KT Rolster finally quelled their demons and silenced the critics by winning the 2018 LCK Summer Split and qualifying
                        for Worlds 2018 as Korea’s first seed. Hailed as a Korean superteam, KT Rolster is packed with some of the best
                        talent on the planet. Lead by longtime, veteran jungler Score, KT Rolster’s potent mix of veteran legends and young
                        playmakers has turned them into arguably the deadliest team heading into Worlds. With their wait for Korean dominance
                        over, KT Rolster is now turning their sights to international competition where they’ll look to prove they’re not
                        a one-hit wonder while adding another piece to their recently updated trophy case.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/blank.jpg" class="image">
                            <div class="name">KINGEN</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-kt.jpg" class="image">
                            <div class="name">NOEXCUSE</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team1-info" class="page-info" style="display: none;">
                    <div class="team-name" title="AFREECA">AFREECA</div>
                    <div class="team-name" title="FREECS">FREECS</div>
                    <div class="team-info short mtt-p">Afreeca Freecs rebranded from Rebels Anarchy at the tail end of 2015 and have spent the last couple of years building
                        up a menace of a roster. The puzzle pieces came together this year, when the squad earned themselves a pair of
                        top three finishes in both the Spring and Summer LCK Splits. After KT Rolster did them the favor of capturing their
                        first LCK crown, the Freecs were locked in as Korea’s second seed heading into Worlds 2018. They’re well known
                        as one of the most explosive teams in Korea, favoring carry-heavy lineups that allow them to play through their
                        superstar top laner Kiin. If they can reach their sky high potential, the Freecs have the firepower to take down
                        any opponent, any time.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-afs.jpg" class="image">
                            <div class="name">MOWGLI</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-afs.jpg" class="image">
                            <div class="name">COMET</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team2-info" class="page-info" style="display:none;">
                    <div class="team-name" title="GEN.G ESPORTS">GEN.G ESPORTS</div>
                    <div class="team-info tall mtt-p">Gen.G eSports, formerly known as Samsung Galaxy and KSV, are back in action at Worlds to defend their title. This
                        roster quelled their demons and dethroned SK Telecom T1 last year in the World Championship Finals. Yet their pair
                        of 5th Place finishes in both the LCK Spring and Summer Split Playoffs weren’t exactly becoming for a squad that
                        had just reached the pinnacle of competitive League of Legends months earlier. With the odds stacked against them,
                        and a trio of teams standing in their way, Gen.G departed on what was sure to be an arduous journey through the
                        Korean Gauntlet. In a run eerily reminiscent of their 2017 Gauntlet run that got them to Worlds—and their championship
                        crown—Gen.G knocked off SK Telecom T1, Griffin, and finally Kingzone DragonX to secure Korea's third seed at Worlds.
                        Now the defending champs have momentum heading into the World Championship.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-geng.jpg" class="image">
                            <div class="name">HARU</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-geng.jpg" class="image">
                            <div class="name">EDGAR</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team3-info" class="page-info" style="display:none;">
                    <div class="team-name" title="ROYAL NEVER">ROYAL NEVER</div>
                    <div class="team-name" title="GIVE UP">GIVE UP</div>
                    <div class="team-info short mtt-p">Royal Never Give Up has shown astounding dominance this year. They have won all the tournaments they entered in 2018,
                        including the LPL Spring and Summer Splits, Rift Rivals, and the 2018 Mid-Season Invitational. Since establishing
                        the team in 2015, RNG have represented LPL at Worlds all three years, with the best result of top four. Now there
                        is nothing but only one final target remains – the championship of Worlds 2018.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-rng.jpg" class="image">
                            <div class="name">KARSA</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-rng.jpg" class="image">
                            <div class="name">HEART</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team4-info" class="page-info" style="display:none;">
                    <div class="team-name" title="INVICTUS">INVICTUS</div>
                    <div class="team-name" title="GAMING">GAMING</div>
                    <div class="team-info short mtt-p">Invictus Gaming was established in August 2011 and the team was one of the initial contenders in the first LPL Spring
                        Split that took place in 2013. While the team's roster underwent various changes in the past five years, iG have
                        never stopped moving forward. The current roster has several iconic players, including Rookie and Jackeylove. Mid
                        laner Rookie is currently the most experienced active Korean player in the LPL region, winning MVP for both the
                        Spring and Summer 2018 LPL Splits. Jackeylove is currently the icon of Chinese ADCs and his growth this year has
                        helped him become one of the most stable damage outputs on the team. While iG haven't been to Worlds since 2015,
                        their strong roster and new head coach, Coach Kim Jungsu, will look for significant results this time around. </div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-ig.jpg" class="image">
                            <div class="name">DUKE</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-ig.jpg" class="image">
                            <div class="name">KIM</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team5-info" class="page-info" style="display:none;">
                    <div class="team-name" title="EDWARD">EDWARD</div>
                    <div class="team-name" title="GAMING">GAMING</div>
                    <div class="team-info short mtt-p">Edward Gaming debuted in the 2014 LPL Spring Split. The one and only goal of EDG ever since the beginning was to
                        become champions. They won the 2014 LPL Spring and Summer Splits, the 2015 LPL Spring Split, the 2016 and 2017’s
                        Summer Split, and on top of all that, they have yet to miss a single World Championship. Apart from participating
                        in four Worlds, they were also the winner of the first Mid-Season Invitational in 2015, achieving the first international
                        victory for China. As one of the veteran teams in the LPL, their top tier competitiveness has never declined despite
                        changes in their roster. This year, the performance of EDG in the LPL has experienced ups and downs, as they did
                        not choose to hire any superstars. However, against all odds, they defeated both JD Gaming and Rogue Warriors in
                        the LPL Regional Qualifier to ultimately punch yet another ticket to Worlds. This young team is fierce and EDG
                        is ready to make history once again.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-edg.jpg" class="image">
                            <div class="name">HARO</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-edg.jpg" class="image">
                            <div class="name">NOFE</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team6-info" class="page-info" style="display:none;">
                    <div class="team-name" title="FNATIC">FNATIC</div>
                    <div class="team-info tall mtt-p">Fnatic is one of Europe’s oldest organizations and one of its most successful. This year they started off hot, taking
                        home the 2018 EU LCS Spring Split crown. But that wasn’t enough. They demolished FC Schalke 04 in the 2018 Summer
                        Split Finals to secure the organization’s seventh EU LCS title. The difference with this roster is their fluid
                        six-man rotation that features top laners Bwipo and sOAZ sharing time based on the tactics Fnatic have in mind.
                        When you add this type of flexibility to the already star-studded Fnatic squad, you get a recipe for wins—lots
                        and lots of wins. With their dominance of the EU LCS already in the rearview mirror, Fnatic now have set their
                        sights on the World Championship. It’ll be a long and arduous road, but if there’s a European team that knows what
                        it takes to hoist the Summoner's Cup—it’s Fnatic.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-fnc.jpg" class="image">
                            <div class="name">SOAZ</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-fnc.jpg" class="image">
                            <div class="name">DYLAN FALCO</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team7-info" class="page-info" style="display:none;">
                    <div class="team-name" title="TEAM VITALITY">TEAM VITALITY</div>
                    <div class="team-info tall mtt-p">Team Vitality only experienced moderate success in the EU LCS throughout 2017. Not ones to settle for mediocrity,
                        Vitality completely overhauled their roster in 2018 with a trio of new rookies who mixed in well with veteran leaders
                        Gilius and Cabochard. The squad quickly picked up a notorious reputation for their high octane, all-or-nothing
                        style of play. Their brazen tactics landed them a 4th Place finish in the 2018 EU LCS Spring Split. When it looked
                        like they were losing competitive fire in the middle of the 2018 EU LCS Summer Split, they swapped in the scarf
                        aficionado himself, Kikis, to man the jungle. His addition breathed life back into Vitality who finished the Summer
                        Split strong and picked up a respectable 3rd Place finish. While this may be Vitality's first trip to the World
                        Championship, they make up for their inexperience with tons of style and brash bravado. </div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-vit.jpg" class="image">
                            <div class="name">DREAMS</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-vit.jpg" class="image">
                            <div class="name">YAMATOCANNON</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team8-info" class="page-info" style="display:none;">
                    <div class="team-name" title="G2 ESPORTS">G2 ESPORTS</div>
                    <div class="team-info tall mtt-p">G2 Esports have racked up four EU LCS titles and two trips to Worlds since their inception in late 2015. Dominance
                        is the name of the game for G2, so it was a surprise when they went titleless this year and were forced to fight
                        through the European Gauntlet in order to lock in a spot at Worlds. In a rare moment as underdogs, G2 fought off
                        a pesky Splyce squad, then shredded FC Schalke 04 for a 3-1 in the Regional Qualifier Finals to punch their ticket
                        to Korea. G2's power has always come from their perennial all-pro mid laner, Perkz. His versatility coupled with
                        a sky-high mechanical ceiling makes him a terror to deal with. On top of that, Perkz’s growing rapport with jungler
                        Jankos has created a potent one-two punch that’s only gotten stronger with time. G2 may not be the kings of Europe
                        they once were, but this Worlds could be the perfect time to stage a coup and take back their place as Europe’s
                        best.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/blank.jpg" class="image">
                            <div class="name">SACRE</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-g2.jpg" class="image">
                            <div class="name">GRABBZ</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team9-info" class="page-info" style="display:none;">
                    <div class="team-name" title="TEAM LIQUID">TEAM LIQUID</div>
                    <div class="team-info tall mtt-p">Team Liquid went back to the drawing board after a tumultuous 2016 and nearly disastrous 2017 to build a powerhouse
                        roster in 2018. With their newly-stacked squad, Team Liquid wasted no time dispelling the “Forever Fourth” meme
                        by picking up the organization’s first-ever NA LCS crown in the 2018 Spring Split. Fast forward a few months to
                        the end of the Summer Split and Team Liquid easily locked in back-to-back NA LCS titles with their 3-0 demolition
                        of Cloud9 in the Finals. While Liquid is absolutely stacked with talent, NA LCS MVP Doublelift stands head and
                        shoulders above them all. The bot laner is already one of the most recognizable faces in professional League of
                        Legends, and with the support of his team, Doublelift’s latest campaign left no doubt that he’s the greatest talent
                        North America has ever produced.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-tl.jpg" class="image">
                            <div class="name">V1PER</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-tl.jpg" class="image">
                            <div class="name">CAIN</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team10-info" class="page-info" style="display:none;">
                    <div class="team-name" title="100 THIEVES">100 THIEVES</div>
                    <div class="team-info tall mtt-p">100 Thieves is one of the newest teams in the NA LCS, but that didn’t stop them from quickly assembling a squad that
                        could throw punches with the best of them. They wasted no time proving themselves, styling on opponents all the
                        way to the 2018 NA LCS Spring Split Finals in the organization's rookie split. While they endured a bit of a sophomore
                        slump with a 4th place finish in the Summer Split, they racked up enough Championship Points to qualify for Worlds.
                        The team may look unassuming at first, but they’ve got a sneaky amount of international experience spread across
                        their roster. Add in their pair of All-Pro superstars, aphromoo and Ssumday, and this band of thieves has a chance
                        in just about any matchup. Even though they look like long shots to make a splash at Worlds, the Thieves will take
                        on any odds if it means they’ve got a chance to pull off the heist of a lifetime.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-100.jpg" class="image">
                            <div class="name">RIKARA</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-100.jpg" class="image">
                            <div class="name">PR0LLY</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team11-info" class="page-info" style="display:none;">
                    <div class="team-name" title="CLOUD9">CLOUD9</div>
                    <div class="team-info tall mtt-p">Cloud9 sat in last place in the NA LCS after a roster shake up at the start of the season. The team that had captured
                        so many fans around the globe seemed to finally be running out of magic. Then things started to change, and a victory
                        against TSM quickly snowballed into an eight-game win streak that catapulted Cloud9 from 10th to 2nd. Not only
                        were they on fire, but they looked like one of the best teams in North America. The key? A rotating seven-man roster
                        that could adapt on the fly and create the mismatches they were looking for. And even though Cloud9 fell against
                        Team Liquid in the Summer Split Finals, they knew they had one more shot at Worlds through the Gauntlet. Cloud9
                        capped off their comeback season in dominant fashion with an emotional and historic 3-0 sweep of TSM in the Regional
                        Qualifier Finals. Sporting a renewed swagger, Cloud9 touch down in Korea as one of the tournament’s true wild cards.
                    </div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-c9.jpg" class="image">
                            <div class="name">SVENSKEREN</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-c9.jpg" class="image">
                            <div class="name">REAPERED</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team12-info" class="page-info" style="display:none;">
                    <div class="team-name" title="FLASH WOLVES">FLASH WOLVES</div>
                    <div class="team-info tall mtt-p">Flash Wolves is the top team in the LMS. Although they faced coach and roster changes this year, it didn't affect
                        their domination. In the Summer Split, they went 14-0 and quickly routed Mad Team 3-0 in the Finals to secure the
                        first seed for the LMS. This was the sixth consecutive Finals win for Flash Wolves. This roster is good at getting
                        advantages in lane through confrontations and grouping up to attack bot lane in advance. Calculated map control
                        and rapid rotations allow them to take objectives fast. This lightning-paced strategy gets the Flash Wolves rolling
                        early, forcing opponents to react too late to win the game. Flash Wolves had the shortest average game time and
                        highest first turret rate in 2018 LMS. Now heading to Worlds for the fourth time, Flash Wolves are sharpening their
                        fangs to fearlessly fight every opponent and chase higher glory. </div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-fw.jpg" class="image">
                            <div class="name">MMD</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-fw.jpg" class="image">
                            <div class="name">WARHORSE</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team13-info" class="page-info" style="display:none;">
                    <div class="team-name" title="MAD TEAM">MAD TEAM</div>
                    <div class="team-info tall mtt-p">Mad Team has not even been around for a year but their strong play and masterful coaching earned them the most Championship
                        Points in the LMS. This is the first trip to the World Championship for every member of MAD. In the Spring Split,
                        MAD usually used a split push line-up, with fighter champions in the side lanes pulling opponents into position,
                        then finding the timing to engage to win team fights with a numbers advantage. But in the Summer Split, they changed.
                        Using a more mature playstyle, they drove the pace of the game with calculated jungle macro and took advantages
                        early. The changes are credited to Coach GreenTea, who has rapidly progressed MAD's overall team communication
                        and performance. He will expect them to continue their growth and prove their strength among the best at Worlds.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-mad.jpg" class="image">
                            <div class="name">BENNY</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-mad.jpg" class="image">
                            <div class="name">GREENTEA</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team14-info" class="page-info" style="display:none;">
                    <div class="team-name" title="G-REX">G-REX</div>
                    <div class="team-info tall mtt-p">G-Rex is led by Season 2 World Champion Toyz. The team debuted in Spring 2018 and made it all the way to 2nd Place
                        in the LMS. However, due to the meta changes in summer, GRX stumbled in the beginning. They even lost to J Team
                        and failed to qualify to Playoffs. But these beasts waited for an opportunity to ambush their opponents. They seized
                        the moment during the LMS Regional Qualifiers, defeating Hong Kong Attitude and J Team for revenge. GRX now heads
                        to Worlds ready to sink their claws into international opponents.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-grex.jpg" class="image">
                            <div class="name">BAYBAY</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-grex.jpg" class="image">
                            <div class="name">WEI</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team15-info" class="page-info" style="display:none;">
                    <div class="team-name" title="KABUM!">KABUM!</div>
                    <div class="team-name" title="E-SPORTS">E-SPORTS</div>
                    <div class="team-info short mtt-p">KaBuM made history in Brazil in 2018: by winning CBLoL’s Winter Split, they became the first Brazilian that will
                        represent the country twice in the World Championship. KaBuM also won the Summer Split and represented Brazil at
                        this year's Mid-Season Invitational. The team’s playstyle values organized and disciplined games over individual
                        greatness, but that's not say they don't have stars like TitaN and dyNquedo. KaBuM is going to Korea three weeks
                        in advance to get the most out of the World Championship -- will that training be enough to get them to achieve
                        something as epic as the victory against Alliance in 2014 (remember “;This is for KaBuM!”;)?</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-kab.jpg" class="image">
                            <div class="name">WOS</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/blank.jpg" class="image">
                            <div class="name">HIRO</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team16-info" class="page-info" style="display:none;">
                    <div class="team-name" title="GAMBIT">GAMBIT</div>
                    <div class="team-name" title="ESPORTS">ESPORTS</div>
                    <div class="team-info short mtt-p">Gambit Esports, once the scariest team in the West, blew up the LCL by building the most star-studded lineup in the
                        history of the league. Trying to make a splash at the World Championship, this will be the fourth trip to Worlds
                        for Diamondprox, third for PvPStejos, Kira and EDward, and even Lodik debuted internationally at this year's Mid-Season
                        Invitational. Calculated and able to perform under pressure, Gambit Esports will be prepared to face off against
                        nearly any opponent.
                    </div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-gam.jpg" class="image">
                            <div class="name">SEIGIMITSU</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-gmb.jpg" class="image">
                            <div class="name">ATREMAINS</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team17-info" class="page-info" style="display:none;">
                    <div class="team-name" title="DETONATION">DETONATION</div>
                    <div class="team-name" title="FOCUSME">FOCUSME</div>
                    <div class="team-info short mtt-p">DetonatioN FocusMe is notorious for earning 1st place in the LJL regular season but coming up short in the Playoffs.
                        In their fourth successive Finals appearance, Detonation FocusMe finally earned their first LJL Championship, and
                        a trip to Worlds, by defeating Unsold Stuff Gaming 3-1. This will be the first World Championship for each player
                        on DFM aside from Evi who attended with Rampage in 2017. The team is excited to make it this far and represent
                        Japan on the international stage.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-det.jpg" class="image">
                            <div class="name">PINK BEAN</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/blank.jpg" class="image">
                            <div class="name">KAZU</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team18-info" class="page-info" style="display:none;">
                    <div class="team-name" title="INFINITY">INFINITY</div>
                    <div class="team-name" title="ESPORTS">ESPORTS</div>
                    <div class="team-info short mtt-p">Infinity Esports has proven to be an exemplary organization. The team has been to three straight Finals in their
                        region, losing the first two against Rainbow7, the iconic representative in the Latin America North. Now, for the
                        first time in the region’s history, there's a new champion to represent LLN at Worlds. Coming off their historic
                        win, Infinity will look to leverage their momentum at Worlds for the first time ever. Led by their experienced
                        Peruvian star Arce in the support role, the team has a calculated style and is also likely to shine in the jungle
                        with SolidSnake, as well as in the bot lane with their ADC, Renyu, who quickly became the LLN's Rookie of the Year.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-ie.jpg" class="image">
                            <div class="name">OTTOVAG</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-ie.jpg" class="image">
                            <div class="name">SOREN</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team19-info" class="page-info" style="display:none;">
                    <div class="team-name" title="KAOS LATIN">KAOS LATIN</div>
                    <div class="team-name" title="GAMERS">GAMERS</div>
                    <div class="team-info short mtt-p">Kaos Latin Gamers have dominated the South American scene for the past year. They achieved their third championship
                        in a row and are now returning to Worlds. The red rhinos showed strong play at the Mid-Season Invitational, and
                        their current roster has been together for a long time, further cementing their synergy. Kaos Latin Gamers' passionate
                        spirit runs through their aggressive jungler, Tierwulf, and much of their success will rest on his shoulders. But
                        other teams shouldn't take any of KLG lightly. Mid laner Plugo also has vast international experience and can carry
                        his team with his versatile playstyle.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-kaos.jpg" class="image">
                            <div class="name">ZEALOT</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-kaos.jpg" class="image">
                            <div class="name">PIERRE</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team20-info" class="page-info" style="display:none;">
                    <div class="team-name" title="DIRE WOLVES">DIRE WOLVES</div>
                    <div class="team-info tall mtt-p">The Dire Wolves are a ferocious bunch. Coming off their second 10-0 regular split, the wolfpack have now won 4 OPL
                        Finals in a row. The OPL is a league characterised by big personalities. These players aren’t afraid to speak their
                        mind and even less afraid to laugh at themselves. But don’t be fooled by their lighthearted bravado; this is a
                        fiercely competitive league, and the only thing that matters is victory. This is especially true of the Dire Wolves.
                        For this incredibly ambitious team, the OPL is just a means to an end; the ultimate goal is to make their mark
                        on the international stage and bring pride to Oceania.*
                        <br>
                        <br>*Shernfire is currently serving a two-game suspension.
                        <br>
                        <br>
                    </div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-dw.jpg" class="image">
                            <div class="name">RIPPII</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-dw.jpg" class="image">
                            <div class="name">SHARP</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team21-info" class="page-info" style="display:none;">
                    <div class="team-name" title="BAHÇEŞEHIR">BAHÇEŞEHIR</div>
                    <div class="team-name" title="SUPERMASSIVE">SUPERMASSIVE</div>
                    <div class="team-info short mtt-p">Bahçeşehir SuperMassive is one of the TCL’s most successful teams in recent years. Since 2016 when the team was founded,
                        they’ve managed to make it to every single Finals in the Turkish Championship League. Despite their consistent
                        performance, they had never won the Turkish Grand Finals. This year, Korean players GBM and SnowFlower helped SuperMassive
                        break this curse. Beating Royal Bandits with a score of 3-1 in Finals, SUP earned the right to compete in the Worlds
                        for the first time in the team’s history. </div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-sm.jpg" class="image">
                            <div class="name">SECAF REIS</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/blank.jpg" class="image">
                            <div class="name">IREAN</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team22-info" class="page-info" style="display:none;">
                    <div class="team-name" title="ASCENSION">ASCENSION</div>
                    <div class="team-name" title="GAMING">GAMING</div>
                    <div class="team-info short mtt-p">Ascension Gaming showed strong performances in Southeast Asia's new competitive format this year. They went 6-0 in
                        the Group Stage and sealed a trip to Worlds with a 3-0 against MEGA Esports in the Finals. Despite changes in the
                        region’s competitive landscape, Ascension Gaming continues their dominance by making small changes to their roster.
                        With the addition of Russian AD Carry, Niksar, the team was able to move Lloyd to the jungle and cover their weaknesses
                        in bot lane. The team is now stronger than ever, with stable players in all lanes, and a more aggressive playstyle.
                        If a game against Ascension is prolonged, expect a fearsome team fight!</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/blank.jpg" class="image">
                            <div class="name">SUNSUNSUN</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/blank.jpg" class="image">
                            <div class="name">CHAINARIN</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
                <div id="team23-info" class="page-info" style="display: none;">
                    <div class="team-name" title="PHONG VU">PHONG VU</div>
                    <div class="team-name" title="BUFFALO">BUFFALO</div>
                    <div class="team-info short mtt-p">Phong Vũ Buffalo ascended to the top in the inaugural season of the Vietnam Championship Series. With the core of
                        old Young Generation, in mid laner Naul and bot laner BigKoro, and the help of star top laner Zeros, PVB became
                        tournament favorites early on. PVB lead the league in kills per game and second least deaths per game. Not just
                        gaining advantage through kills, their vision control is also impeccable thanks to Palette, the best vision centric
                        support the league has ever seen. In the VCS Summer Finals, they took down Cube Adonis who went from last place
                        in Spring to first place in Summer. As the team representing Vietnam, Phong Vũ Buffalo is hungry to prove they’re
                        a threat with their eyes fixed on a deep Worlds run.</div>
                    <div class="team-sub-coach">
                        <div class="sub-coach">
                            <img src="./assetss/sub-pvb.jpg" class="image">
                            <div class="name">XUHAO</div>
                            <dib class="role">SUB </dib>
                        </div>
                        <div class="sub-coach">
                            <img src="./assetss/coach-pvb.jpg" class="image">
                            <div class="name">REN</div>
                            <dib class="role">COACH </dib>
                        </div>
                    </div>
                </div>
            </div>
            <div id="page-selection-mobile" style="display: none;">
                <div id="page-selection-header-mobile">
                    <div id="team0-header-mobile" style="display: none;">
                        <span>LCK - </span> Korea</div>
                    <div id="team1-header-mobile" style="display: none;">
                        <span>LCK - </span> Korea</div>
                    <div id="team2-header-mobile" style="display:none;">
                        <span>LCK - </span> Korea</div>
                    <div id="team3-header-mobile" style="display:none;">
                        <span>LPL - </span> CHINA</div>
                    <div id="team4-header-mobile" style="display:none;">
                        <span>LPL - </span> CHINA</div>
                    <div id="team5-header-mobile" style="display:none;">
                        <span>LPL - </span> CHINA</div>
                    <div id="team6-header-mobile" style="display:none;">
                        <span>EU LCS - </span> EUROPE</div>
                    <div id="team7-header-mobile" style="display:none;">
                        <span>EU LCS - </span> EUROPE</div>
                    <div id="team8-header-mobile" style="display:none;">
                        <span>EU LCS - </span> EUROPE</div>
                    <div id="team9-header-mobile" style="display:none;">
                        <span>NA LCS - </span> NORTH AMERICA</div>
                    <div id="team10-header-mobile" style="display:none;">
                        <span>NA LCS - </span> NORTH AMERICA</div>
                    <div id="team11-header-mobile" style="display:none;">
                        <span>NA LCS - </span> NORTH AMERICA</div>
                    <div id="team12-header-mobile" style="display:none;">
                        <span>LMS - </span> TAIWAN</div>
                    <div id="team13-header-mobile" style="display:none;">
                        <span>LMS - </span> TAIWAN</div>
                    <div id="team14-header-mobile" style="display:none;">
                        <span>LMS - </span> TAIWAN</div>
                    <div id="team15-header-mobile" style="display:none;">
                        <span>CBLOL - </span> BRAZIL</div>
                    <div id="team16-header-mobile" style="display:none;">
                        <span>LCL - </span> COMMONWEALTH OF INDEPENDENT STATES</div>
                    <div id="team17-header-mobile" style="display:none;">
                        <span>LJL - </span> JAPAN</div>
                    <div id="team18-header-mobile" style="display:none;">
                        <span>LLN - </span> LATIN AMERICA NORTH </div>
                    <div id="team19-header-mobile" style="display:none;">
                        <span>CLS - </span> LATIN AMERICA SOUTH </div>
                    <div id="team20-header-mobile" style="display:none;">
                        <span>OPL - </span> OCEANIA</div>
                    <div id="team21-header-mobile" style="display:none;">
                        <span>TCL - </span> TURKEY</div>
                    <div id="team22-header-mobile" style="display:none;">
                        <span>SEA - </span> SOUTHEAST ASIA</div>
                    <div id="team23-header-mobile" style="display: none;">
                        <span>VCS - </span> VIETNAM</div>
                </div>
                <div id="page-selection-dropdown-mobile">
                    <div id="team0-selection-mobile" data-league="team0">
                        <span>LCK - </span>KT ROLSTER </div>
                    <div id="team1-selection-mobile" data-league="team1">
                        <span>LCK - </span>AFREECA FREECS</div>
                    <div id="team2-selection-mobile" data-league="team2">
                        <span>LCK - </span>GEN.G ESPORTS </div>
                    <div id="team3-selection-mobile" data-league="team3">
                        <span>LPL - </span>ROYAL NEVER GIVE UP</div>
                    <div id="team4-selection-mobile" data-league="team4">
                        <span>LPL - </span>INVICTUS GAMING</div>
                    <div id="team5-selection-mobile" data-league="team5">
                        <span>LPL - </span>EDWARD GAMING</div>
                    <div id="team6-selection-mobile" data-league="team6">
                        <span>EU LCS - </span>FNATIC </div>
                    <div id="team7-selection-mobile" data-league="team7">
                        <span>EU LCS - </span>TEAM VITALITY </div>
                    <div id="team8-selection-mobile" data-league="team8">
                        <span>EU LCS - </span>G2 ESPORTS </div>
                    <div id="team9-selection-mobile" data-league="team9">
                        <span>NA LCS - </span>TEAM LIQUID </div>
                    <div id="team10-selection-mobile" data-league="team10">
                        <span>NA LCS - </span>100 THIEVES </div>
                    <div id="team11-selection-mobile" data-league="team11">
                        <span>NA LCS - </span>CLOUD9 </div>
                    <div id="team12-selection-mobile" data-league="team12">
                        <span>LMS - </span>FLASH WOLVES </div>
                    <div id="team13-selection-mobile" data-league="team13">
                        <span>LMS - </span>MAD TEAM </div>
                    <div id="team14-selection-mobile" data-league="team14">
                        <span>LMS - </span>G-REX </div>
                    <div id="team15-selection-mobile" data-league="team15">
                        <span>CBLOL - </span>KABUM! E-SPORTS</div>
                    <div id="team16-selection-mobile" data-league="team16">
                        <span>LCL - </span>GAMBIT ESPORTS</div>
                    <div id="team17-selection-mobile" data-league="team17">
                        <span>LJL - </span>DETONATION FOCUSME</div>
                    <div id="team18-selection-mobile" data-league="team18">
                        <span>LLN - </span>INFINITY ESPORTS</div>
                    <div id="team19-selection-mobile" data-league="team19">
                        <span>CLS - </span>KAOS LATIN GAMERS</div>
                    <div id="team20-selection-mobile" data-league="team20">
                        <span>OPL - </span>DIRE WOLVES </div>
                    <div id="team21-selection-mobile" data-league="team21">
                        <span>TCL - </span>BAHÇEŞEHIR SUPERMASSIVE</div>
                    <div id="team22-selection-mobile" data-league="team22">
                        <span>SEA - </span>ASCENSION GAMING</div>
                    <div id="team23-selection-mobile" data-league="team23">
                        <span>VCS - </span>PHONG VU BUFFALO</div>
                </div>
            </div>
            <div id="page-info-mobile">
                <div id="team0-mobile" style="display: none;">
                    <div class="team-name">KT ROLSTER</div>
                    <div class="mobile-names">
                        <div class="name-top">SMEB</div>
                        <div class="name-jungle">SCORE</div>
                        <div class="name-mid">UCAL</div>
                        <div class="name-adc">DEFT</div>
                        <div class="name-support">MATA</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">NOEXCUSE</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">KINGEN</div>
                        </div>
                    </div>
                    <div class="mobile-info">KT Rolster finally quelled their demons and silenced the critics by winning the 2018 LCK Summer Split and qualifying
                        for Worlds 2018 as Korea’s first seed. Hailed as a Korean superteam, KT Rolster is packed with some of the best
                        talent on the planet. Lead by longtime, veteran jungler Score, KT Rolster’s potent mix of veteran legends and young
                        playmakers has turned them into arguably the deadliest team heading into Worlds. With their wait for Korean dominance
                        over, KT Rolster is now turning their sights to international competition where they’ll look to prove they’re not
                        a one-hit wonder while adding another piece to their recently updated trophy case.</div>
                </div>
                <div id="team1-mobile" style="display: none;">
                    <div class="team-name">AFREECA</div>
                    <div class="team-name">FREECS</div>
                    <div class="mobile-names">
                        <div class="name-top">KIIN</div>
                        <div class="name-jungle">SPIRIT</div>
                        <div class="name-mid">KURO</div>
                        <div class="name-adc">KRAMER</div>
                        <div class="name-support">TUSIN</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">COMET</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">MOWGLI</div>
                        </div>
                    </div>
                    <div class="mobile-info">Afreeca Freecs rebranded from Rebels Anarchy at the tail end of 2015 and have spent the last couple of years building
                        up a menace of a roster. The puzzle pieces came together this year, when the squad earned themselves a pair of
                        top three finishes in both the Spring and Summer LCK Splits. After KT Rolster did them the favor of capturing their
                        first LCK crown, the Freecs were locked in as Korea’s second seed heading into Worlds 2018. They’re well known
                        as one of the most explosive teams in Korea, favoring carry-heavy lineups that allow them to play through their
                        superstar top laner Kiin. If they can reach their sky high potential, the Freecs have the firepower to take down
                        any opponent, any time.</div>
                </div>
                <div id="team2-mobile" style="display: none">
                    <div class="team-name">GEN.G ESPORTS</div>
                    <div class="mobile-names">
                        <div class="name-top">CUVEE</div>
                        <div class="name-jungle">AMBITION</div>
                        <div class="name-mid">CROWN</div>
                        <div class="name-adc">RULER</div>
                        <div class="name-support">COREJJ</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">EDGAR</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">HARU</div>
                        </div>
                    </div>
                    <div class="mobile-info">Gen.G eSports, formerly known as Samsung Galaxy and KSV, are back in action at Worlds to defend their title. This
                        roster quelled their demons and dethroned SK Telecom T1 last year in the World Championship Finals. Yet their pair
                        of 5th Place finishes in both the LCK Spring and Summer Split Playoffs weren’t exactly becoming for a squad that
                        had just reached the pinnacle of competitive League of Legends months earlier. With the odds stacked against them,
                        and a trio of teams standing in their way, Gen.G departed on what was sure to be an arduous journey through the
                        Korean Gauntlet. In a run eerily reminiscent of their 2017 Gauntlet run that got them to Worlds—and their championship
                        crown—Gen.G knocked off SK Telecom T1, Griffin, and finally Kingzone DragonX to secure Korea's third seed at Worlds.
                        Now the defending champs have momentum heading into the World Championship.</div>
                </div>
                <div id="team3-mobile" style="display: none">
                    <div class="team-name">ROYAL NEVER</div>
                    <div class="team-name">GIVE UP</div>
                    <div class="mobile-names">
                        <div class="name-top">LETME</div>
                        <div class="name-jungle">MLXG</div>
                        <div class="name-mid">XIAOHU</div>
                        <div class="name-adc">UZI</div>
                        <div class="name-support">MING</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">HEART</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">KARSA</div>
                        </div>
                    </div>
                    <div class="mobile-info">Royal Never Give Up has shown astounding dominance this year. They have won all the tournaments they entered in 2018,
                        including the LPL Spring and Summer Splits, Rift Rivals, and the 2018 Mid-Season Invitational. Since establishing
                        the team in 2015, RNG have represented LPL at Worlds all three years, with the best result of top four. Now there
                        is nothing but only one final target remains – the championship of Worlds 2018.</div>
                </div>
                <div id="team4-mobile" style="display: none">
                    <div class="team-name">INVICTUS</div>
                    <div class="team-name">GAMING</div>
                    <div class="mobile-names">
                        <div class="name-top">THESHY</div>
                        <div class="name-jungle">NING</div>
                        <div class="name-mid">ROOKIE</div>
                        <div class="name-adc">JACKEYLOVE</div>
                        <div class="name-support">BAOLAN</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">KIM</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">DUKE</div>
                        </div>
                    </div>
                    <div class="mobile-info">Invictus Gaming was established in August 2011 and the team was one of the initial contenders in the first LPL Spring
                        Split that took place in 2013. While the team's roster underwent various changes in the past five years, iG have
                        never stopped moving forward. The current roster has several iconic players, including Rookie and Jackeylove. Mid
                        laner Rookie is currently the most experienced active Korean player in the LPL region, winning MVP for both the
                        Spring and Summer 2018 LPL Splits. Jackeylove is currently the icon of Chinese ADCs and his growth this year has
                        helped him become one of the most stable damage outputs on the team. While iG haven't been to Worlds since 2015,
                        their strong roster and new head coach, Coach Kim Jungsu, will look for significant results this time around. </div>
                </div>
                <div id="team5-mobile" style="display: none">
                    <div class="team-name">EDWARD</div>
                    <div class="team-name">GAMING</div>
                    <div class="mobile-names">
                        <div class="name-top">RAY</div>
                        <div class="name-jungle">CLEARLOVE</div>
                        <div class="name-mid">SCOUT</div>
                        <div class="name-adc">IBOY</div>
                        <div class="name-support">MEIKO</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">NOFE</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">HARO</div>
                        </div>
                    </div>
                    <div class="mobile-info">Edward Gaming debuted in the 2014 LPL Spring Split. The one and only goal of EDG ever since the beginning was to
                        become champions. They won the 2014 LPL Spring and Summer Splits, the 2015 LPL Spring Split, the 2016 and 2017’s
                        Summer Split, and on top of all that, they have yet to miss a single World Championship. Apart from participating
                        in four Worlds, they were also the winner of the first Mid-Season Invitational in 2015, achieving the first international
                        victory for China. As one of the veteran teams in the LPL, their top tier competitiveness has never declined despite
                        changes in their roster. This year, the performance of EDG in the LPL has experienced ups and downs, as they did
                        not choose to hire any superstars. However, against all odds, they defeated both JD Gaming and Rogue Warriors in
                        the LPL Regional Qualifier to ultimately punch yet another ticket to Worlds. This young team is fierce and EDG
                        is ready to make history once again.</div>
                </div>
                <div id="team6-mobile" style="display: none">
                    <div class="team-name">FNATIC</div>
                    <div class="mobile-names">
                        <div class="name-top">BWIPO</div>
                        <div class="name-jungle">BROXAH</div>
                        <div class="name-mid">CAPS</div>
                        <div class="name-adc">REKKLES</div>
                        <div class="name-support">HYLISSANG</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">DYLAN FALCO</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">SOAZ</div>
                        </div>
                    </div>
                    <div class="mobile-info">Fnatic is one of Europe’s oldest organizations and one of its most successful. This year they started off hot, taking
                        home the 2018 EU LCS Spring Split crown. But that wasn’t enough. They demolished FC Schalke 04 in the 2018 Summer
                        Split Finals to secure the organization’s seventh EU LCS title. The difference with this roster is their fluid
                        six-man rotation that features top laners Bwipo and sOAZ sharing time based on the tactics Fnatic have in mind.
                        When you add this type of flexibility to the already star-studded Fnatic squad, you get a recipe for wins—lots
                        and lots of wins. With their dominance of the EU LCS already in the rearview mirror, Fnatic now have set their
                        sights on the World Championship. It’ll be a long and arduous road, but if there’s a European team that knows what
                        it takes to hoist the Summoner's Cup—it’s Fnatic.</div>
                </div>
                <div id="team7-mobile" style="display: none">
                    <div class="team-name">TEAM VITALITY</div>
                    <div class="mobile-names">
                        <div class="name-top">CABOCHARD</div>
                        <div class="name-jungle">KIKIS</div>
                        <div class="name-mid">JIIZUKÉ</div>
                        <div class="name-adc">ATTILA</div>
                        <div class="name-support">JACTROLL</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">YAMATOCANNON</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">DREAMS</div>
                        </div>
                    </div>
                    <div class="mobile-info">Team Vitality only experienced moderate success in the EU LCS throughout 2017. Not ones to settle for mediocrity,
                        Vitality completely overhauled their roster in 2018 with a trio of new rookies who mixed in well with veteran leaders
                        Gilius and Cabochard. The squad quickly picked up a notorious reputation for their high octane, all-or-nothing
                        style of play. Their brazen tactics landed them a 4th Place finish in the 2018 EU LCS Spring Split. When it looked
                        like they were losing competitive fire in the middle of the 2018 EU LCS Summer Split, they swapped in the scarf
                        aficionado himself, Kikis, to man the jungle. His addition breathed life back into Vitality who finished the Summer
                        Split strong and picked up a respectable 3rd Place finish. While this may be Vitality's first trip to the World
                        Championship, they make up for their inexperience with tons of style and brash bravado. </div>
                </div>
                <div id="team8-mobile" style="display: none">
                    <div class="team-name">G2 ESPORTS</div>
                    <div class="mobile-names">
                        <div class="name-top">WUNDER</div>
                        <div class="name-jungle">JANKOS</div>
                        <div class="name-mid">PERKZ</div>
                        <div class="name-adc">HJÄRNAN</div>
                        <div class="name-support">WADID</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">GRABBZ</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">SACRE</div>
                        </div>
                    </div>
                    <div class="mobile-info">G2 Esports have racked up four EU LCS titles and two trips to Worlds since their inception in late 2015. Dominance
                        is the name of the game for G2, so it was a surprise when they went titleless this year and were forced to fight
                        through the European Gauntlet in order to lock in a spot at Worlds. In a rare moment as underdogs, G2 fought off
                        a pesky Splyce squad, then shredded FC Schalke 04 for a 3-1 in the Regional Qualifier Finals to punch their ticket
                        to Korea. G2's power has always come from their perennial all-pro mid laner, Perkz. His versatility coupled with
                        a sky-high mechanical ceiling makes him a terror to deal with. On top of that, Perkz’s growing rapport with jungler
                        Jankos has created a potent one-two punch that’s only gotten stronger with time. G2 may not be the kings of Europe
                        they once were, but this Worlds could be the perfect time to stage a coup and take back their place as Europe’s
                        best.</div>
                </div>
                <div id="team9-mobile" style="display: none">
                    <div class="team-name">TEAM LIQUID</div>
                    <div class="mobile-names">
                        <div class="name-top">IMPACT</div>
                        <div class="name-jungle">XMITHIE</div>
                        <div class="name-mid">POBELTER</div>
                        <div class="name-adc">DOUBLELIFT</div>
                        <div class="name-support">OLLEH</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">CAIN</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">V1PER</div>
                        </div>
                    </div>
                    <div class="mobile-info">Team Liquid went back to the drawing board after a tumultuous 2016 and nearly disastrous 2017 to build a powerhouse
                        roster in 2018. With their newly-stacked squad, Team Liquid wasted no time dispelling the “Forever Fourth” meme
                        by picking up the organization’s first-ever NA LCS crown in the 2018 Spring Split. Fast forward a few months to
                        the end of the Summer Split and Team Liquid easily locked in back-to-back NA LCS titles with their 3-0 demolition
                        of Cloud9 in the Finals. While Liquid is absolutely stacked with talent, NA LCS MVP Doublelift stands head and
                        shoulders above them all. The bot laner is already one of the most recognizable faces in professional League of
                        Legends, and with the support of his team, Doublelift’s latest campaign left no doubt that he’s the greatest talent
                        North America has ever produced.</div>
                </div>
                <div id="team10-mobile" style="display: none">
                    <div class="team-name">100 THIEVES</div>
                    <div class="mobile-names">
                        <div class="name-top">SSUMDAY</div>
                        <div class="name-jungle">ANDA</div>
                        <div class="name-mid">RYU</div>
                        <div class="name-adc">CODY SUN</div>
                        <div class="name-support">APHROMOO</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">PR0LLY</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">RIKARA</div>
                        </div>
                    </div>
                    <div class="mobile-info">100 Thieves is one of the newest teams in the NA LCS, but that didn’t stop them from quickly assembling a squad that
                        could throw punches with the best of them. They wasted no time proving themselves, styling on opponents all the
                        way to the 2018 NA LCS Spring Split Finals in the organization's rookie split. While they endured a bit of a sophomore
                        slump with a 4th place finish in the Summer Split, they racked up enough Championship Points to qualify for Worlds.
                        The team may look unassuming at first, but they’ve got a sneaky amount of international experience spread across
                        their roster. Add in their pair of All-Pro superstars, aphromoo and Ssumday, and this band of thieves has a chance
                        in just about any matchup. Even though they look like long shots to make a splash at Worlds, the Thieves will take
                        on any odds if it means they’ve got a chance to pull off the heist of a lifetime.</div>
                </div>
                <div id="team11-mobile" style="display: none">
                    <div class="team-name">CLOUD9</div>
                    <div class="mobile-names">
                        <div class="name-top">LICORICE</div>
                        <div class="name-jungle">BLABER</div>
                        <div class="name-mid">JENSEN</div>
                        <div class="name-adc">SNEAKY</div>
                        <div class="name-support">ZEYZAL</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">REAPERED</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">SVENSKEREN</div>
                        </div>
                    </div>
                    <div class="mobile-info">Cloud9 sat in last place in the NA LCS after a roster shake up at the start of the season. The team that had captured
                        so many fans around the globe seemed to finally be running out of magic. Then things started to change, and a victory
                        against TSM quickly snowballed into an eight-game win streak that catapulted Cloud9 from 10th to 2nd. Not only
                        were they on fire, but they looked like one of the best teams in North America. The key? A rotating seven-man roster
                        that could adapt on the fly and create the mismatches they were looking for. And even though Cloud9 fell against
                        Team Liquid in the Summer Split Finals, they knew they had one more shot at Worlds through the Gauntlet. Cloud9
                        capped off their comeback season in dominant fashion with an emotional and historic 3-0 sweep of TSM in the Regional
                        Qualifier Finals. Sporting a renewed swagger, Cloud9 touch down in Korea as one of the tournament’s true wild cards.
                    </div>
                </div>
                <div id="team12-mobile" style="display: none">
                    <div class="team-name">FLASH WOLVES</div>
                    <div class="mobile-names">
                        <div class="name-top">HANABI</div>
                        <div class="name-jungle">MOOJIN</div>
                        <div class="name-mid">MAPLE</div>
                        <div class="name-adc">BETTY</div>
                        <div class="name-support">SWORDART</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">WARHORSE</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">MMD</div>
                        </div>
                    </div>
                    <div class="mobile-info">Flash Wolves is the top team in the LMS. Although they faced coach and roster changes this year, it didn't affect
                        their domination. In the Summer Split, they went 14-0 and quickly routed Mad Team 3-0 in the Finals to secure the
                        first seed for the LMS. This was the sixth consecutive Finals win for Flash Wolves. This roster is good at getting
                        advantages in lane through confrontations and grouping up to attack bot lane in advance. Calculated map control
                        and rapid rotations allow them to take objectives fast. This lightning-paced strategy gets the Flash Wolves rolling
                        early, forcing opponents to react too late to win the game. Flash Wolves had the shortest average game time and
                        highest first turret rate in 2018 LMS. Now heading to Worlds for the fourth time, Flash Wolves are sharpening their
                        fangs to fearlessly fight every opponent and chase higher glory. </div>
                </div>
                <div id="team13-mobile" style="display: none">
                    <div class="team-name">MAD TEAM</div>
                    <div class="mobile-names">
                        <div class="name-top">LIANG</div>
                        <div class="name-jungle">KONGYUE</div>
                        <div class="name-mid">UNIBOY</div>
                        <div class="name-adc">BREEZE</div>
                        <div class="name-support">K</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">GREENTEA</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">BENNY</div>
                        </div>
                    </div>
                    <div class="mobile-info">Mad Team has not even been around for a year but their strong play and masterful coaching earned them the most Championship
                        Points in the LMS. This is the first trip to the World Championship for every member of MAD. In the Spring Split,
                        MAD usually used a split push line-up, with fighter champions in the side lanes pulling opponents into position,
                        then finding the timing to engage to win team fights with a numbers advantage. But in the Summer Split, they changed.
                        Using a more mature playstyle, they drove the pace of the game with calculated jungle macro and took advantages
                        early. The changes are credited to Coach GreenTea, who has rapidly progressed MAD's overall team communication
                        and performance. He will expect them to continue their growth and prove their strength among the best at Worlds.</div>
                </div>
                <div id="team14-mobile" style="display: none">
                    <div class="team-name">G-REX</div>
                    <div class="mobile-names">
                        <div class="name-top">PK</div>
                        <div class="name-jungle">EMPT2Y</div>
                        <div class="name-mid">CANDY</div>
                        <div class="name-adc">STITCH</div>
                        <div class="name-support">KOALA</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">WEI</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">BAYBAY</div>
                        </div>
                    </div>
                    <div class="mobile-info">G-Rex is led by Season 2 World Champion Toyz. The team debuted in Spring 2018 and made it all the way to 2nd Place
                        in the LMS. However, due to the meta changes in summer, GRX stumbled in the beginning. They even lost to J Team
                        and failed to qualify to Playoffs. But these beasts waited for an opportunity to ambush their opponents. They seized
                        the moment during the LMS Regional Qualifiers, defeating Hong Kong Attitude and J Team for revenge. GRX now heads
                        to Worlds ready to sink their claws into international opponents.</div>
                </div>
                <div id="team15-mobile" style="display: none">
                    <div class="team-name">KABUM!</div>
                    <div class="team-name">E-SPORTS</div>
                    <div class="mobile-names">
                        <div class="name-top">ZANTINS</div>
                        <div class="name-jungle">RANGER</div>
                        <div class="name-mid">DYNQUEDO</div>
                        <div class="name-adc">TITAN</div>
                        <div class="name-support">RIYEV</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">HIRO</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">WOS</div>
                        </div>
                    </div>
                    <div class="mobile-info">KaBuM made history in Brazil in 2018: by winning CBLoL’s Winter Split, they became the first Brazilian that will
                        represent the country twice in the World Championship. KaBuM also won the Summer Split and represented Brazil at
                        this year's Mid-Season Invitational. The team’s playstyle values organized and disciplined games over individual
                        greatness, but that's not say they don't have stars like TitaN and dyNquedo. KaBuM is going to Korea three weeks
                        in advance to get the most out of the World Championship -- will that training be enough to get them to achieve
                        something as epic as the victory against Alliance in 2014 (remember “;This is for KaBuM!”;)?</div>
                </div>
                <div id="team16-mobile" style="display: none">
                    <div class="team-name">GAMBIT</div>
                    <div class="team-name">ESPORTS</div>
                    <div class="mobile-names">
                        <div class="name-top">PVPSTEJOS</div>
                        <div class="name-jungle">DIAMONDPROX</div>
                        <div class="name-mid">KIRA</div>
                        <div class="name-adc">LODIK</div>
                        <div class="name-support">EDWARD</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">ATREMAINS</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">SEIGIMITSU</div>
                        </div>
                    </div>
                    <div class="mobile-info">Gambit Esports, once the scariest team in the West, blew up the LCL by building the most star-studded lineup in the
                        history of the league. Trying to make a splash at the World Championship, this will be the fourth trip to Worlds
                        for Diamondprox, third for PvPStejos, Kira and EDward, and even Lodik debuted internationally at this year's Mid-Season
                        Invitational. Calculated and able to perform under pressure, Gambit Esports will be prepared to face off against
                        nearly any opponent. </div>
                </div>
                <div id="team17-mobile" style="display: none">
                    <div class="team-name">DETONATION</div>
                    <div class="team-name">FOCUSME</div>
                    <div class="mobile-names">
                        <div class="name-top">EVI</div>
                        <div class="name-jungle">STEAL</div>
                        <div class="name-mid">CEROS</div>
                        <div class="name-adc">YUTAPON</div>
                        <div class="name-support">VIVID</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">KAZU</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">PINK BEAN</div>
                        </div>
                    </div>
                    <div class="mobile-info">DetonatioN FocusMe is notorious for earning 1st place in the LJL regular season but coming up short in the Playoffs.
                        In their fourth successive Finals appearance, Detonation FocusMe finally earned their first LJL Championship, and
                        a trip to Worlds, by defeating Unsold Stuff Gaming 3-1. This will be the first World Championship for each player
                        on DFM aside from Evi who attended with Rampage in 2017. The team is excited to make it this far and represent
                        Japan on the international stage.</div>
                </div>
                <div id="team18-mobile" style="display: none">
                    <div class="team-name">INFINITY</div>
                    <div class="team-name">ESPORTS</div>
                    <div class="mobile-names">
                        <div class="name-top">RELIC</div>
                        <div class="name-jungle">SOLIDSNAKE</div>
                        <div class="name-mid">COTOPACO</div>
                        <div class="name-adc">RENYU</div>
                        <div class="name-support">ARCE</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">SOREN</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">OTTOVAG</div>
                        </div>
                    </div>
                    <div class="mobile-info">Infinity Esports has proven to be an exemplary organization. The team has been to three straight Finals in their
                        region, losing the first two against Rainbow7, the iconic representative in the Latin America North. Now, for the
                        first time in the region’s history, there's a new champion to represent LLN at Worlds. Coming off their historic
                        win, Infinity will look to leverage their momentum at Worlds for the first time ever. Led by their experienced
                        Peruvian star Arce in the support role, the team has a calculated style and is also likely to shine in the jungle
                        with SolidSnake, as well as in the bot lane with their ADC, Renyu, who quickly became the LLN's Rookie of the Year.</div>
                </div>
                <div id="team19-mobile" style="display: none">
                    <div class="team-name">KAOS LATIN</div>
                    <div class="team-name">GAMERS</div>
                    <div class="mobile-names">
                        <div class="name-top">NATE</div>
                        <div class="name-jungle">TIERWULF</div>
                        <div class="name-mid">PLUGO</div>
                        <div class="name-adc">FIX</div>
                        <div class="name-support">SLOW</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">PIERRE</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">ZEALOT</div>
                        </div>
                    </div>
                    <div class="mobile-info">Kaos Latin Gamers have dominated the South American scene for the past year. They achieved their third championship
                        in a row and are now returning to Worlds. The red rhinos showed strong play at the Mid-Season Invitational, and
                        their current roster has been together for a long time, further cementing their synergy. Kaos Latin Gamers' passionate
                        spirit runs through their aggressive jungler, Tierwulf, and much of their success will rest on his shoulders. But
                        other teams shouldn't take any of KLG lightly. Mid laner Plugo also has vast international experience and can carry
                        his team with his versatile playstyle.</div>
                </div>
                <div id="team20-mobile" style="display: none">
                    <div class="team-name">DIRE WOLVES</div>
                    <div class="mobile-names">
                        <div class="name-top">BIOPANTHER</div>
                        <div class="name-jungle">SHERNFIRE</div>
                        <div class="name-mid">TRIPLE</div>
                        <div class="name-adc">K1NG</div>
                        <div class="name-support">CUPCAKE</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">SHARP</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">RIPPII</div>
                        </div>
                    </div>
                    <div class="mobile-info">The Dire Wolves are a ferocious bunch. Coming off their second 10-0 regular split, the wolfpack have now won 4 OPL
                        Finals in a row. The OPL is a league characterised by big personalities. These players aren’t afraid to speak their
                        mind and even less afraid to laugh at themselves. But don’t be fooled by their lighthearted bravado; this is a
                        fiercely competitive league, and the only thing that matters is victory. This is especially true of the Dire Wolves.
                        For this incredibly ambitious team, the OPL is just a means to an end; the ultimate goal is to make their mark
                        on the international stage and bring pride to Oceania.</div>
                </div>
                <div id="team21-mobile" style="display: none">
                    <div class="team-name">BAHÇEŞEHIR</div>
                    <div class="team-name">SUPERMASSIVE</div>
                    <div class="mobile-names">
                        <div class="name-top">FABFABULOUS</div>
                        <div class="name-jungle">STOMAGED</div>
                        <div class="name-mid">GBM</div>
                        <div class="name-adc">ZEITNOT</div>
                        <div class="name-support">SNOWFLOWER</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">IREAN</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">SECAF REIS</div>
                        </div>
                    </div>
                    <div class="mobile-info">Bahçeşehir SuperMassive is one of the TCL’s most successful teams in recent years. Since 2016 when the team was founded,
                        they’ve managed to make it to every single Finals in the Turkish Championship League. Despite their consistent
                        performance, they had never won the Turkish Grand Finals. This year, Korean players GBM and SnowFlower helped SuperMassive
                        break this curse. Beating Royal Bandits with a score of 3-1 in Finals, SUP earned the right to compete in the Worlds
                        for the first time in the team’s history. </div>
                </div>
                <div id="team22-mobile" style="display: none">
                    <div class="team-name">ASCENSION</div>
                    <div class="team-name">GAMING</div>
                    <div class="mobile-names">
                        <div class="name-top">ROCKKY</div>
                        <div class="name-jungle">LLOYD</div>
                        <div class="name-mid">G4</div>
                        <div class="name-adc">NIKSAR</div>
                        <div class="name-support">RICH</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">CHAINARIN</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">SUNSUNSUN</div>
                        </div>
                    </div>
                    <div class="mobile-info">Ascension Gaming showed strong performances in Southeast Asia's new competitive format this year. They went 6-0 in
                        the Group Stage and sealed a trip to Worlds with a 3-0 against MEGA Esports in the Finals. Despite changes in the
                        region’s competitive landscape, Ascension Gaming continues their dominance by making small changes to their roster.
                        With the addition of Russian AD Carry, Niksar, the team was able to move Lloyd to the jungle and cover their weaknesses
                        in bot lane. The team is now stronger than ever, with stable players in all lanes, and a more aggressive playstyle.
                        If a game against Ascension is prolonged, expect a fearsome team fight!</div>
                </div>
                <div id="team23-mobile" style="display: none;">
                    <div class="team-name">PHONG VU</div>
                    <div class="team-name">BUFFALO</div>
                    <div class="mobile-names">
                        <div class="name-top">ZEROS</div>
                        <div class="name-jungle">MELIODAS</div>
                        <div class="name-mid">NAUL</div>
                        <div class="name-adc">BIGKORO</div>
                        <div class="name-support">PALETTE</div>
                    </div>
                    <div class="mobile-sub-coach">
                        <div class="mobile-coach">
                            <div class="mobile-sub-coach-title">COACH </div>
                            <div class="mobile-sub-coach-name">REN</div>
                        </div>
                        <div class="mobile-sub">
                            <div class="mobile-sub-coach-title">SUB </div>
                            <div class="mobile-sub-coach-name">XUHAO</div>
                        </div>
                    </div>
                    <div class="mobile-info">Phong Vũ Buffalo ascended to the top in the inaugural season of the Vietnam Championship Series. With the core of
                        old Young Generation, in mid laner Naul and bot laner BigKoro, and the help of star top laner Zeros, PVB became
                        tournament favorites early on. PVB lead the league in kills per game and second least deaths per game. Not just
                        gaining advantage through kills, their vision control is also impeccable thanks to Palette, the best vision centric
                        support the league has ever seen. In the VCS Summer Finals, they took down Cube Adonis who went from last place
                        in Spring to first place in Summer. As the team representing Vietnam, Phong Vũ Buffalo is hungry to prove they’re
                        a threat with their eyes fixed on a deep Worlds run.</div>
                </div>
            </div>
            <div class="nav">
                <div id="nav-left" class=""></div>
                <div id="nav-right" class=""></div>
            </div>
        </div>
        <script type="text/javascript" id="" src="./assetss/wpp.js"></script>
        <script type="application/ld+json">
            {
            "@context":"http://schema.org",
            "@type":"VideoGame",
            "name":[
            {
            "@language":"en",
            "@value":"League of Legends"
            },
            ],
            "url":"http://leagueoflegends.com",
            "sameAs": [
            "http://en.wikipedia.org/wiki/League_of_Legends",
            "https://www.youtube.com/user/RiotGamesInc"
            ],
            "description":[
            {
            "@language":"en",
            "@value":"Recently recognized as the most played video game in the world—67 million play every month—League of Legends® is a multiplayer online battle arena game (MOBA). Players choose a role from an expanding cast of powerful champions and join forces in strategic, fast-paced gameplay to take control of the enemy’s end of the battlefield."
            },
            ],
            "genre":[
            "Multiplayer online battle arena",
            "Action real time strategy"
            "Massively multiplayer online"
            ],
            "contributor":[
            {
            "@type":"Role",
            "roleName":"developer",
            "contributor":{
            "@type":"Organization",
            "name":"Riot Games",
            "sameAs":"www.riotgames.com"
            }
            }
            ],
            "publisher":{
            "@type":"Organization",
            "name":"Riot Games",
            "sameAs":"www.riotgames.com"
            },
            "image":"http://news.cdn.leagueoflegends.com/public/images/misc/GameBox.jpg",
            "screenshot":"http://news.cdn.leagueoflegends.com/public/images/misc/Background.jpg",
            "trailer":{
            "@type":"VideoObject",
            "url":"https://www.youtube.com/watch?v=vzHrjOMfHPY",
            "inLanguage":"en"
            },
            "exampleOfWork":[
            {
            "@type":"VideoGame",
            "gamePlatform":[
            "http://en.wikipedia.org/wiki/Microsoft_Windows",
            "http://en.wikipedia.org/wiki/OS_X"
            ],
            "contentRating":"ESRB T",
            "releasedEvent":{
            "@type":"PublicationEvent",
            "startDate":"2009-10-27",
            }
            }
            },

            }
            }
            ]
            }
        </script>
        <script type="text/javascript" id="">function trackScroll(e) {
                function g(a, d, b) {
                    a.addEventListener ? a.addEventListener(d, b) : a.attachEvent && a.attachEvent("on" + d, b)
                }
                function h() {
                    for (var a = 0, d = e.length; a < d; a++) {
                        var b = document.documentElement;
                        b = self.pageYOffset || b && b.scrollTop || document.body.scrollTop;
                        var c = document.documentElement;
                        c = self.innerHeight || c && c.clientHeight || document.body.clientHeight;
                        b = (b + c) / document.body.scrollHeight * 100;
                        c = e[a] + "%";
                        0 > f.indexOf(c) && b > e[a] && (f.push(c), analyticsEvent("interaction", "page-scroll", c))
                    }
                }
                var f = [];
                g(window,
                        "scroll", h)
            }
            trackScroll([10, 50, 90]);</script>
        <script type="text/javascript" id="">analyticsEvent = function (b, a, c, d, e) {
                dataLayer.push({event: "analyticsEvent", eventCategory: b, eventAction: a, eventLabel: c, eventValue: d, eventNonInt: e})
            };
            analyticsSocial = function (b, a, c, d) {
                dataLayer.push({event: "social", socialNetwork: b, socialAction: a, socialTarget: c, socialPagePath: d})
            };
            analyticsVPV = function (b) {
                dataLayer.push({event: "analyticsVPV", vpvName: b})
            };
            analyticsClearVPV = function () {
                dataLayer.push({event: "analyticsVPV", vpvName: void 0})
            };
            analyticsForm = function (b, a) {
                var c = b, d = a.name || a.id || a.type, e = "interaction";
                c = "form: " + c;
                d = d + ":" + a.type;
                analyticsEvent(e, c, d)
            };</script>
        <script type="text/javascript" id="">(function () {
                var g = /^persist(Save|Replace)/, f = (new Date).getTime();
                var a = 18E5;
                if ("undefined" !== typeof Storage) {
                    var b = localStorage.getItem("persistDL");
                    var c = localStorage.getItem("persistTime");
                    switch (google_tag_manager["GTM-N98J"].macro(1)) {
                        case "gtm.js":
                            b && c && (a && f > Number(c) + a ? localStorage.removeItem("persistDL") : b && dataLayer.push(JSON.parse(b)));
                            break;
                        case "persistDelete":
                            localStorage.removeItem("persistDL");
                            break;
                        case "persistReplace":
                            b = null;
                        case "persistSave":
                        for (var d = 0; d < dataLayer.length; d++)
                            if (g.test(dataLayer[d].event)) {
                                a =
                                        dataLayer[d];
                                delete a.event;
                                c = JSON.parse(b) || {};
                                for (var e in a)
                                    a.hasOwnProperty(e) && (c[e] = a[e]);
                                localStorage.setItem("persistDL", JSON.stringify(c))
                            }
                    }
                    localStorage.setItem("persistTime", JSON.stringify(f))
                }
            })();</script>
        <script type="text/javascript" id="">function getCookie(b) {
                b += "\x3d";
                for (var d = document.cookie.split(";"), c = 0; c < d.length; c++) {
                    for (var a = d[c]; " " == a.charAt(0); )
                        a = a.substring(1);
                    if (0 == a.indexOf(b))
                        return a.substring(b.length, a.length)
                }
                return ""
            }
            var signupId = getCookie("SIGNUP_USER_ID");
            "" != signupId && dataLayer.push({userId: signupId});</script>
        <script type="text/javascript" id="">function getCookie(c) {
                c += "\x3d";
                for (var d = document.cookie.split(";"), b = 0; b < d.length; b++) {
                    for (var a = d[b]; " " == a.charAt(0); )
                        a = a.substring(1);
                    if (0 == a.indexOf(c))
                        return a.substring(c.length, a.length)
                }
                return ""
            }
            function setCookie(c, d, b) {
                var a = new Date;
                a.setTime(a.getTime() + 864E5 * b);
                b = "expires\x3d" + a.toUTCString();
                document.cookie = c + "\x3d" + d + "; " + b
            }
            var playSplashCount = 0, playSplashCountCookie = getCookie("play_splash_count");
            playSplashCountCookie && (playSplashCount = parseInt(playSplashCountCookie, 10), isNaN(playSplashCount) && (playSplashCount = 0));
            0 >= playSplashCount && (playSplashCount += 1);</script>
        <script type="text/javascript" id="">(function (b) {
                var d = function () {
                    var a = {};
                    if ("chrome" in b && "function" === typeof b.chrome.loadTimes)
                        a = b.chrome.loadTimes(), a = {duration: Math.round(1E3 * (a.firstPaintTime - a.startLoadTime)), source: "chromeLoadTimes"}, 6E4 < a.duration && (a = {});
                    else if ("performance" in b) {
                        var c = b.performance.timing;
                        0 < c.navigationStart && (a = {duration: c.msFirstPaint - c.navigationStart, source: "msFirstPaint"})
                    }
                    a && "number" === typeof a.duration && 0 < a.duration && b.ga && "function" === typeof b.ga && (a = {
                        hitType: "timing", timingCategory: "RUM", timingVar: "First Paint (ms)",
                        timingValue: a.duration, timingLabel: a.source
                    }, b.navigator.sendBeacon && "function" === typeof b.navigator.sendBeacon && (a.transport = "beacon"), b.ga("send", a))
                };
                "complete" === document.readyState ? d() : b.addEventListener("load", d)
            })(window);</script>
        <script type="text/javascript" id="">!function (b, e, f, g, a, c, d) {
                b.fbq || (a = b.fbq = function () {
                    a.callMethod ? a.callMethod.apply(a, arguments) : a.queue.push(arguments)
                }, b._fbq || (b._fbq = a), a.push = a, a.loaded = !0, a.version = "2.0", a.queue = [], c = e.createElement(f), c.async = !0, c.src = g, d = e.getElementsByTagName(f)[0], d.parentNode.insertBefore(c, d))
            }(window, document, "script", "https://connect.facebook.net/en_US/fbevents.js");
            fbq("init", "613770612154492");
            fbq("track", "PageView");</script>
        <noscript>
        <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=613770612154492&amp;ev=PageView&amp;noscript=1">
        </noscript>









        <script type="text/javascript" id="" src="./assetss/js(1)"></script>
        <script type="text/javascript" id="" src="./assetss/c3metrics-694.js"></script>
        <script type="text/javascript" id="">window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments)
            }
            gtag("js", new Date);
            gtag("config", "DC-8717890");</script>
        <div id="ads"></div>
        <!-- FOOTER -->
        <div id="footer">
            <div id="footer-content">
                <ul class="simple-menu" id="footer-nav">
                    <li>
                        <a class="" href="http://gameinfo.na.leagueoflegends.com/en/game-info/get-started/what-is-lol/" title="">About League Of Legends</a>
                    </li>
                    <li>
                        <a class="" href="http://na.leagueoflegends.com/en/page/league-legends-prepaid-game-cards/" title="">Prepaid Cards</a>
                    </li>
                    <li>
                        <a class="" href="http://leagueoflegends.na-surveyen2.sgizmo.com/s3/" title="">Help Us Improve</a>
                    </li>
                    <li>
                        <a class="" href="http://status.leagueoflegends.com/?en_US#na" title="">Service Status</a>
                    </li>
                    <li>
                        <a class="" href="https://support.riotgames.com/hc/en-us" title="">Support</a>
                    </li>
                    <li>
                        <a class="" href="http://www.lolesports.com/en_US" title="">Esports Pro Site</a>
                    </li>
                </ul>
                <div class="gs-container vertical-gutter">
                    <div class="default-1-5">
                        <div id="riot-social">
                            <a class="riot-logo" href="http://www.riotgames.com/">Riot Games</a>
                            <ul class="social-links">
                                <li>
                                    <a class="youtube" href="http://www.youtube.com/user/riotgamesinc" title="">YouTube.com</a>
                                </li>
                                <li>
                                    <a class="twitter" href="http://twitter.com/leagueoflegends" title="">Twitter.com</a>
                                </li>
                                <li>
                                    <a class="facebook" href="http://www.facebook.com/leagueoflegends" title="">Facebook.com</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="default-3-5">
                        <a class="btn-large btn-large-primary" href="http://signup.na.leagueoflegends.com/en" id="footer-play-for-free" tite="">Play Now</a>
                        <p>© 2018 Riot Games, Inc.</p>
                        <ul class="simple-menu" id="footer-sub-nav">
                            <li>
                                <a class="" href="http://na.leagueoflegends.com/en/legal/privacy" title="">
                                    <span class="updated" style="color:red; font-size: 1.1em; font-weight:bold;">updated</span>&nbsp; Privacy Policy</a>
                            </li>
                            <li>
                                <a class="" href="http://na.leagueoflegends.com/en/legal/termsofuse" title="">Terms Of Use</a>
                            </li>
                        </ul>
                    </div>
                    <div class="default-1-5">
                        <div id="pvp-net-ad">
                            <a class="pvp-net" href="http://pvp.net/" title="">PVP.net</a>
                            <ul class="pvpnet-links simple-menu">
                                <li>
                                    <a class="" href="http://signup.na.leagueoflegends.com/en" title="">Signup</a>
                                </li>
                                <li>
                                    <a class="" href="https://support.riotgames.com/hc/en-us" title="">Support</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ad-bar lol-sponsors gs-container gs-half-gutter vertical-gutter content-center default-1-col">
                    <div>
                        <a class="esrb" href="http://www.esrb.org/ratings/ratings_guide.jsp">
                            <img src="./assetss/esrb.jpg" title="Esrb">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- riotbar -->
        <script>window.riotBarConfig = {mobileResponsive: true, navigation: {activeLink: 'news'}, cookiePolicy: {enabled: false, }, /* Enable version 2... */cookiePolicyV2: {enabled: true, }};</script>
        <script async="" src="./assetss/en_US.js"></script>
        <script src="./assetss/jquery.min.js"></script>
        <script src="./assetss/jquery-ui.min.js"></script>
        <div id="riotbar-bar" class=" i18n-en riotbar-base-element riotbar-mobile-responsive riotbar-brand-lol" lang="en">
            <div class="riotbar-left-content">
                <div id="riotbar-navmenu">
                    <span class="riotbar-explore">
                        <span class="riotbar-explore-arrow"></span>
                        <a class="riotbar-logo" href="https://na.leagueoflegends.com/en/">
                            <span class="riotbar-explore-label">
                                <span class="riotbar-explore-subtitle">Explore</span>
                                <br>
                                <span class="riotbar-explore-title">League
                                    <span>
                                    </span>
                                </span>
                            </span>
                        </a>
                    </span>

                    <div class="riotbar-navmenu-dropdown">
                        <div class="riotbar-navmenu-touchpoints">
                            <div class="riotbar-navmenu-category riotbar-first-category">
                                <div class="riotbar-category-name">
                                    League of Legends
                                </div>
                                <div class="riotbar-left-column">
                                    <a class="riotbar-navmenu-link" href="https://na.leagueoflegends.com/en/" data-riotbar-link-id="home" data-ping-meta="riotbar-content=navigation|riotbar-navigation=home">
                                        Home
                                        <span class="riotbar-link-subtext">
                                            Explore League of Legends
                                        </span>
                                    </a>
                                    <a class="riotbar-navmenu-link riotbar-active-link" href="https://na.leagueoflegends.com/en/news/" data-riotbar-link-id="news"
                                       data-ping-meta="riotbar-content=navigation|riotbar-navigation=news">
                                        News
                                        <span class="riotbar-link-subtext">
                                            Catch up on League news
                                        </span>
                                    </a>
                                    <a class="riotbar-navmenu-link" href="http://gameinfo.na.leagueoflegends.com/en/game-info/" data-riotbar-link-id="game" data-ping-meta="riotbar-content=navigation|riotbar-navigation=game">
                                        Game
                                        <span class="riotbar-link-subtext">
                                            Learn about League
                                        </span>
                                    </a>
                                    <a class="riotbar-navmenu-link" href="http://universe.leagueoflegends.com/en_US/" data-riotbar-link-id="universe" data-ping-meta="riotbar-content=navigation|riotbar-navigation=universe">
                                        Universe
                                        <span class="riotbar-link-subtext">
                                            Explore the League universe
                                        </span>
                                    </a>
                                </div>
                                <div class="riotbar-right-column">
                                    <a class="riotbar-navmenu-link" href="http://nexus.leagueoflegends.com/" data-riotbar-link-id="nexus" data-ping-meta="riotbar-content=navigation|riotbar-navigation=nexus">
                                        Nexus
                                        <span class="riotbar-link-subtext">
                                            Look behind the scenes of League
                                        </span>
                                    </a>
                                    <a class="riotbar-navmenu-link" href="http://www.lolesports.com/en_US" data-riotbar-link-id="esports" data-ping-meta="riotbar-content=navigation|riotbar-navigation=esports">
                                        Esports
                                        <span class="riotbar-link-subtext">
                                            See pros battle for glory
                                        </span>
                                    </a>
                                    <a class="riotbar-navmenu-link" href="http://boards.na.leagueoflegends.com/en/" data-riotbar-link-id="boards" data-ping-meta="riotbar-content=navigation|riotbar-navigation=boards">
                                        Community
                                        <span class="riotbar-link-subtext">
                                            Connect &amp; Contribute
                                        </span>
                                    </a>
                                    <a class="riotbar-navmenu-link" href="https://support.riotgames.com/hc/en-us" data-riotbar-link-id="support" data-ping-meta="riotbar-content=navigation|riotbar-navigation=support">
                                        Support
                                        <span class="riotbar-link-subtext">
                                            Get the help you need
                                        </span>
                                    </a>
                                </div>
                            </div>
                            <div class="riotbar-navmenu-category">
                                <div class="riotbar-category-name">
                                    Riot Games
                                </div>
                                <div>
                                    <a class="riotbar-navmenu-link" href="https://na.merch.riotgames.com/en/" data-riotbar-link-id="merchandise" data-ping-meta="riotbar-content=navigation|riotbar-navigation=merchandise">
                                        Merchandise
                                        <span class="riotbar-link-subtext">
                                            Equip yourself IRL
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" riotbar-bar-content">
                <div id="riotbar-navbar" style="padding-left: 0px; padding-right: 0px; margin-left: 0px; visibility: visible;">
                    <span class="riotbar-explore-label">
                        <span class="riotbar-explore-subtitle">Explore</span>
                        <br>
                        <span class="riotbar-explore-title">League</span>
                    </span>
                    <a class="riotbar-navbar-link riotbar-active-link" href="https://na.leagueoflegends.com/en/news/" data-riotbar-link-id="news">
                        News
                    </a>
                    <a class="riotbar-navbar-link" href="http://gameinfo.na.leagueoflegends.com/en/game-info/" data-riotbar-link-id="game">
                        Game
                    </a>
                    <a class="riotbar-navbar-link" href="http://universe.leagueoflegends.com/en_US/" data-riotbar-link-id="universe">
                        Universe
                    </a>
                    <a class="riotbar-navbar-link" href="http://nexus.leagueoflegends.com/" data-riotbar-link-id="nexus">
                        Nexus
                    </a>
                    <a class="riotbar-navbar-link" href="http://www.lolesports.com/en_US" data-riotbar-link-id="esports">
                        Esports
                    </a>
                    <a class="riotbar-navbar-link" href="http://boards.na.leagueoflegends.com/en/" data-riotbar-link-id="boards">
                        Community
                    </a>
                    <a class="riotbar-navbar-link" href="https://support.riotgames.com/hc/en-us" data-riotbar-link-id="support">
                        Support
                    </a>
                    <span class="riotbar-navbar-separator"></span>
                    <a class="riotbar-navbar-link" href="https://na.merch.riotgames.com/en/" data-riotbar-link-id="merchandise">
                        Merchandise
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div id="riotbar-subbar" class=" i18n-en riotbar-base-element">
        <div class=" riotbar-pagewidth riotbar-subcontent">
            <div id="riotbar-locale">
                <div class="riotbar-locale-switch">
                    <div id="riotbar-locale-switch-trigger">
                        <span class="region">North America</span>
                        <span class="language">(English)</span>
                    </div>
                    <div id="riotbar-locale-switch-dropdown">
                        <div id="riotbar-region-switcher">
                            <div id="riotbar-region-dropdown-trigger">North America</div>

                            <div id="riotbar-region-dropdown">
                                <ul class="region-list">

                                    <li class="riotbar-region-option disabled" id="riotbar-region-option-na" data-locale-region-id="na">
                                        North America
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-euw" data-locale-region-id="euw">
                                        EU West
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-eune" data-locale-region-id="eune">
                                        EU Nordic &amp; East
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-lan" data-locale-region-id="lan">
                                        Latin America North
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-las" data-locale-region-id="las">
                                        Latin America South
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-br" data-locale-region-id="br">
                                        Brazil
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-jp" data-locale-region-id="jp">
                                        Japan
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-ru" data-locale-region-id="ru">
                                        Russia
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-tr" data-locale-region-id="tr">
                                        Turkey
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-oce" data-locale-region-id="oce">
                                        Oceania
                                    </li>

                                    <li class="riotbar-region-option" id="riotbar-region-option-kr" data-locale-region-id="kr">
                                        Republic of Korea
                                    </li>

                                </ul>
                            </div>
                        </div>

                        <div id="riotbar-language-sets">

                            <div class="riotbar-locale-languages active" id="riotbar-languages-na">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://na.leagueoflegends.com/en">
                                            English
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-euw">
                                <ul class="locale-list">
                                    <li>
                                        <a href="http://euw.leagueoflegends.com/en">
                                            English
                                        </a>
                                    </li>

                                    <li>
                                        <a href="http://euw.leagueoflegends.com/de">
                                            Deutsch
                                        </a>
                                    </li>

                                    <li>
                                        <a href="http://euw.leagueoflegends.com/es">
                                            Español
                                        </a>
                                    </li>

                                    <li>
                                        <a href="http://euw.leagueoflegends.com/fr">
                                            Français
                                        </a>
                                    </li>

                                    <li>
                                        <a href="http://euw.leagueoflegends.com/it">
                                            Italiano
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-eune">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://eune.leagueoflegends.com/en">
                                            English
                                        </a>
                                    </li>

                                    <li>
                                        <a href="http://eune.leagueoflegends.com/pl">
                                            Polski
                                        </a>
                                    </li>

                                    <li>
                                        <a href="http://eune.leagueoflegends.com/el">
                                            Ελληνικά
                                        </a>
                                    </li>

                                    <li>
                                        <a href="http://eune.leagueoflegends.com/ro">
                                            Română
                                        </a>
                                    </li>

                                    <li>
                                        <a href="http://eune.leagueoflegends.com/hu">
                                            Magyar
                                        </a>
                                    </li>

                                    <li>
                                        <a href="http://eune.leagueoflegends.com/cs">
                                            Čeština
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-lan">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://lan.leagueoflegends.com/es">
                                            Español
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-las">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://las.leagueoflegends.com/es">
                                            Español
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-br">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://br.leagueoflegends.com/pt">
                                            Português
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-jp">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://jp.leagueoflegends.com/ja">
                                            日本語
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-ru">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://ru.leagueoflegends.com/ru">
                                            Русский
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-tr">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://tr.leagueoflegends.com/tr">
                                            Türkçe
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-oce">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://oce.leagueoflegends.com/en">
                                            English
                                        </a>
                                    </li>

                                </ul>
                            </div>

                            <div class="riotbar-locale-languages" id="riotbar-languages-kr">
                                <ul class="locale-list">

                                    <li>
                                        <a href="http://kr.leagueoflegends.com/">
                                            한국어
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="riotbar-alerts" class=" riotbar-alerts riotbar-base-element" style="top: -52px;">
        <div id="alert-cookie-policy-v2" style="visibility: visible;">
            <div id="consent_blackbar" class=" riotbar-cookie-policy-v2 cookie-banner hidden"></div>
        </div>
    </div>
    <script src="./assetss/main.js"></script>
    <iframe name="_hjRemoteVarsFrame" title="_hjRemoteVarsFrame" id="_hjRemoteVarsFrame" style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"
            src="./assetss/rcj-da10bd4908deb9e19dfde013ec3fe4ff.html"></iframe>
    <div class=" riotbar-cookie-policy-v2 cookie-link hidden corner-button bottom-left dark expanding">
        <!-- <div class="cookie-link expanding light corner-button bottom-right"> -->
        <div class="icon link-text">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 64 77">
            <path d="M63.6,13.1c0-1-0.7-1.9-1.8-2c-4.7-0.6-9.4-1.8-13.9-3.4c-4.5-1.7-9.6-4-15-7.1
                  c-0.7-0.4-1.3-0.4-2,0c-5.4,3.1-10.4,5.4-15,7.1C11.4,9.2,6.7,10.4,2,11c-1,0.1-1.7,1-1.8,2C-0.3,32.3,4,48,12.8,60.3
                  c4.8,6.7,10.8,12.1,18.1,16.2c0.6,0.4,1.4,0.4,2.1,0c7.2-4.2,13.2-9.6,18-16.2C59.9,48,64.1,32.3,63.6,13.1L63.6,13.1z M47.7,57.9
                  c-4.2,5.8-9.4,10.6-15.8,14.4c-6.3-3.9-11.6-8.7-15.8-14.4c-8-11.2-12-25.5-11.8-43c4.4-0.7,8.8-1.9,13.2-3.5
                  c4.4-1.6,9.2-3.8,14.4-6.6c5.2,2.8,9.9,5,14.3,6.6c4.4,1.6,8.8,2.8,13.2,3.5C59.6,32.5,55.7,46.8,47.7,57.9L47.7,57.9z M47.7,57.9
                  "></path>
            <path d="M45.9,30.9l-0.2-0.1L45,29.2l0.1-0.2c2.1-4.9,2-5,1.6-5.3l-2.9-2.8c-0.1-0.1-0.3-0.2-0.5-0.2c-0.2,0-0.6,0-4.9,1.9
                  l-0.2,0.1L36.6,22l-0.1-0.2c-2-4.9-2.2-4.9-2.7-4.9h-4c-0.5,0-0.7,0-2.6,4.9L27.2,22l-1.7,0.7l-0.2-0.1c-2.9-1.2-4.5-1.8-4.9-1.8
                  c-0.2,0-0.4,0.1-0.5,0.2L17,23.8c-0.4,0.4-0.5,0.5,1.7,5.3l0.1,0.2l-0.7,1.7L17.9,31c-5,1.9-5,2.1-5,2.6v3.9c0,0.5,0,0.7,5,2.5
                  l0.2,0.1l0.7,1.7L18.8,42c-2.1,4.9-2,5-1.6,5.3l2.9,2.8c0.1,0.1,0.3,0.2,0.5,0.2c0.2,0,0.6,0,4.9-1.9l0.2-0.1l1.7,0.7l0.1,0.2
                  c2,4.9,2.2,4.9,2.7,4.9h4c0.5,0,0.7,0,2.6-4.9l0.1-0.2l1.7-0.7l0.2,0.1c2.8,1.2,4.5,1.8,4.9,1.8c0.2,0,0.4-0.1,0.5-0.2l2.9-2.8
                  c0.4-0.4,0.5-0.5-1.7-5.3L45,41.8l0.7-1.7l0.2-0.1c5-2,5-2.1,5-2.6v-3.9C50.9,32.9,50.9,32.7,45.9,30.9L45.9,30.9z M31.9,41.9
                  c-3.6,0-6.5-2.9-6.5-6.4c0-3.5,2.9-6.4,6.5-6.4c3.6,0,6.5,2.9,6.5,6.4C38.4,39,35.5,41.9,31.9,41.9L31.9,41.9z M31.9,41.9"></path>
            </svg>
        </div>
        <div class="label link-text">
            <span id="teconsent"></span>
        </div>
        <!-- </div> -->
    </div>
</body>

</html>
