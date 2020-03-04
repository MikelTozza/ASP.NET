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
       
    }
}