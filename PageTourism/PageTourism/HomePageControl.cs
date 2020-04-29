using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PageTourism
{
    public class HomePageControl
    {
        public class navBar
        {
            public string Home { get; set; }
            public string About { get; set; }
            public string Pages { get; set; }
            public string Gallery { get; set; }
            public string Blog { get; set; }
            public string Contact { get; set; }

            public navBar()
            {
                Home = "";
                About = "";
                Pages = "";
                Gallery = "";
                Blog = "";
                Contact = "";

            }


        }

        public class titleMenu
        {
            public string Title { get; set; }

            public titleMenu()
            {
                Title = "";
            }
        }

        public class Explorer
        {
            public string exploreLineOne;
            public string exploreLineTwo;

            public Explorer()
            {
                exploreLineOne = "";
                exploreLineTwo = "";
            }

        }

        public class BottomPage
        {
            public string leftBox;
            public string middleBox;
            public string rightBox;
            public string leftboxTEXT;
            public string middleboxTEXT;
            public string rightTEXT;



            public BottomPage()
            {
                leftBox = "";
                middleBox = "";
                rightBox = "";
                leftboxTEXT = "";
                middleboxTEXT = "";
                rightTEXT = "";
          
            }
        }

        public class IMG
        {
            public string img;
            public string backgroundImg;
            public string leftboxIMG;
            public string rightboxIMG;
            public string middleboxIMG;
            


            public IMG()
            {
                img = "";
                backgroundImg = "";
                leftboxIMG = "";
                rightboxIMG = "";
                middleboxIMG = "";
            }
        }

        public class gallery
        {
            public string images = "";
            public string images2 = "";
            public string images3 = "";
            public string images4 = "";
            public string images5 = "";
            public string images6 = "";
            public string gallerytext = "";
           

            public gallery()
            {
                images = "";
                images2 = "";
                images3 = "";
                images4 = "";
                images5 = "";
                images6 = "";
                gallerytext = "";

            }
        }

        public class contactPage
        {
            public string text1;
            public string text2;
            public string text3;
            public string text4;
            public string text5;
            public string text6;
            public string text7;
            public string text8;
            public string text9;
            public string text10;

                public contactPage()
            {
                text1 = "";
                text2 = "";
                text3 = "";
                text4 = "";
                text5 = "";
                text6 = "";
                text7 = "";
                text8 = "";
                text9 = "";
                text10 = "";
            }
            



        }

        public class Voyage
        {
            public string titre1 { get; set; }
            public string titre2 { get; set; }
            public string titre3 { get; set; }
            public string desc1 { get; set; }
            public string desc2 { get; set; }
            public string desc3 { get; set; }
            public string prix1 { get; set; }
            public string prix2 { get; set; }
            public string prix3 { get; set; }
            public string photo1 { get; set; }
            public string photo2 { get; set; }
            public string photo3 { get; set; }
            public string check1 { get; set; }
            public string check2 { get; set; }
            public string check3 { get; set; }

            public Voyage()
            {
                titre1 = "";
                titre2 = "";
                titre3 = "";
                desc1 = "";
                desc2 = "";
                desc3 = "";
                prix1 = "";
                prix2 = "";
                prix3 = "";
                photo1 = "";
                photo2 = "";
                photo3 = "";
                check1 = "";
                check2 = "";
                check3 = "";
            }

        }

    }
}