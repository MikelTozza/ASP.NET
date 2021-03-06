﻿using AspSendMail;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text;
using static PageTourism.HomePageControl;

namespace PageTourism
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public navBar menu = new navBar();
        public titleMenu titlemenu = new titleMenu();
        public Explorer explorer = new Explorer();
        public BottomPage bottompage = new BottomPage();
        public IMG image = new IMG();
        public gallery imgGallery = new gallery();
        public contactPage contact = new contactPage();
        public Voyage Voya = new Voyage();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mikel\Desktop\school\Safari\PageTourism\PageTourism\App_Data\TourismDataBase.mdf;Integrated Security=True");
            
            SqlCommand nav = new SqlCommand("Select * from NAV", con);
            con.Open();
            SqlDataReader reader = nav.ExecuteReader();
                while (reader.Read())
                {
                    switch (reader["Id"].ToString())
                    {
                        case "1":
                            menu.Home = reader["content"].ToString();
                            break;
                        case "2":
                            menu.About = reader["content"].ToString();
                            break;
                        case "3":
                            menu.Pages = reader["content"].ToString();
                            break;
                        case "4":
                            menu.Gallery = reader["content"].ToString();
                            break;
                        case "5":
                            menu.Blog = reader["content"].ToString();
                            break;
                        case "6":
                            menu.Contact = reader["content"].ToString();
                            break;
                    }
                }
                con.Close();
            ////////////////////////////////////////////////////////// new query
            
            SqlCommand title = new SqlCommand("Select * from Title", con);
            con.Open();
            SqlDataReader titlereader = title.ExecuteReader();
            while (titlereader.Read())
            {
                switch (titlereader["Id"].ToString())
                {
                    case "1":
                        titlemenu.Title = titlereader["title"].ToString();
                        break;
                }
            }
            con.Close();
            /////////////////////////////////////////////////////// new query

            SqlCommand Explo = new SqlCommand("Select * from Explorer", con);
            con.Open();
            SqlDataReader exploreader = Explo.ExecuteReader();
   
            while (exploreader.Read())  
            {
                switch (exploreader["Id"].ToString())
                {
                    case "1":
                        explorer.exploreLineOne = exploreader["ExploreText"].ToString();
                    break;

                    case "2":
                        explorer.exploreLineTwo = exploreader["ExploreText"].ToString();
                    break;

                }
            }
            con.Close();
            /////////////////////////////////////////////////////// new query

            SqlCommand bottom = new SqlCommand("Select* from bottom",con);
            con.Open();
            SqlDataReader bottomreader = bottom.ExecuteReader();
            while (bottomreader.Read())
            {
                switch (bottomreader["Id"].ToString())
                {
                    case "1":
                        bottompage.leftBox = bottomreader["bottomText"].ToString();
                        break;
                    case "2":
                        bottompage.middleBox = bottomreader["bottomText"].ToString();
                        break;
                    case "3":
                        bottompage.rightBox = bottomreader["bottomText"].ToString();
                        break;
                    case "4":
                        bottompage.leftboxTEXT = bottomreader["bottomText"].ToString();
                        break;
                    case "5":
                        bottompage.middleboxTEXT = bottomreader["bottomText"].ToString();
                        break;
                    case "6":
                        bottompage.rightTEXT = bottomreader["bottomText"].ToString();
                        break;
                }

            }
            con.Close();
            ///////////////////////////////////////////////////// img query
            
            SqlCommand img = new SqlCommand("select * from IMG",con);
            con.Open();
            SqlDataReader imgReader = img.ExecuteReader();
            while (imgReader.Read())
            {
                switch (imgReader["Id"].ToString())
                {
                    case "1":
                        image.img = imgReader["img"].ToString();
                    break;
                    case "2":
                        image.backgroundImg = imgReader["img"].ToString();
                        break;
                    case "3":
                        image.leftboxIMG = imgReader["img"].ToString();
                        break;
                    case "4":
                        image.rightboxIMG = imgReader["img"].ToString();
                        break;
                    case "5":
                        image.middleboxIMG = imgReader["img"].ToString();
                        break;
                }
            }
            con.Close();
            ///////////////////////////////////////////////////// gallery img query
           
            SqlCommand gallery = new SqlCommand("select * from gallery",con);
            con.Open();
            SqlDataReader galleryReader = gallery.ExecuteReader();
            while (galleryReader.Read())
            {
                switch (galleryReader["Id"].ToString())
                {
                    case "1":
                        imgGallery.images = galleryReader["Images"].ToString();
                        break;
                    case "2":
                        imgGallery.images2 = galleryReader["Images"].ToString();
                        break;
                    case "3":
                        imgGallery.images3 = galleryReader["Images"].ToString();
                        break;
                    case "4":
                        imgGallery.images4 = galleryReader["Images"].ToString();
                        break;
                    case "5":
                        imgGallery.images5 = galleryReader["Images"].ToString();
                        break;
                    case "6":
                        imgGallery.images6 = galleryReader["Images"].ToString();
                        break;
                }
            }
            con.Close();
            /////////////////////////////////////////////////////

            SqlCommand cont = new SqlCommand("select * from contactText", con);
            con.Open();
            SqlDataReader contactReader = cont.ExecuteReader();
            while (contactReader.Read())
            {
                switch (contactReader["Id"].ToString())
                {
                    case "1":
                        contact.text1 = contactReader["text"].ToString();
                        break;
                    case "2":
                        contact.text2 = contactReader["text"].ToString();
                        break;
                    case "3":
                        contact.text3 = contactReader["text"].ToString();
                        break;
                    case "4":
                        contact.text4 = contactReader["text"].ToString();
                        break;
                    case "5":
                        contact.text5 = contactReader["text"].ToString();
                        break;
                    case "6":
                        contact.text6 = contactReader["text"].ToString();
                        break;
                    case "7":
                        contact.text7 = contactReader["text"].ToString();
                        break;
                    case "8":
                        contact.text8 = contactReader["text"].ToString();
                        break;
                    case "9":
                        contact.text9 = contactReader["text"].ToString();
                        break;
                    case "10":
                        contact.text10 = contactReader["text"].ToString();
                        break;
                }
            }
            con.Close();
            /////////////////////////////////////////////////////

            SqlCommand Voy = new SqlCommand("Select * from Voyage", con);
            con.Open();
            SqlDataReader VoyReader = Voy.ExecuteReader();
            while (VoyReader.Read())
            {
                switch (VoyReader["Id"].ToString())
                {
                    case "1":
                        Voya.titre1 = VoyReader["titre"].ToString();
                        Voya.desc1 = VoyReader["description"].ToString();
                        Voya.prix1 = VoyReader["prix"].ToString();
                        Voya.photo1 = VoyReader["photo"].ToString();
                        break;
                    case "2":
                        Voya.titre2 = VoyReader["titre"].ToString();
                        Voya.desc2= VoyReader["description"].ToString();
                        Voya.prix2 = VoyReader["prix"].ToString();
                        Voya.photo2= VoyReader["photo"].ToString();
                        break;
                    case "3":
                        Voya.titre3 = VoyReader["titre"].ToString();
                        Voya.desc3= VoyReader["description"].ToString();
                        Voya.prix3 = VoyReader["prix"].ToString();
                        Voya.photo3 = VoyReader["photo"].ToString();
                        break;
                }
            }
            con.Close();
        }

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mikel\Desktop\school\Safari\PageTourism\PageTourism\App_Data\TourismDataBase.mdf;Integrated Security=True");
        protected void btnSend_Click(object sender, EventArgs e)
        {

            if (sendMail(new Email { To = TxtTo.Text, Subject = txtSubject.Text, Message = "On vous envoit un message sous peu" }))
            {
                string str = "Sent";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
                string sql = "INSERT INTO Email (email,subject,text) VALUES (@Val8,@Val9,@Val10)";
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@Val8", TxtTo.Text);
                    cmd.Parameters.AddWithValue("@Val9", txtSubject.Text);
                    cmd.Parameters.AddWithValue("@Val10", txtMessage.Text);
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
                catch (System.Data.SqlClient.SqlException ex)
                {
                    string msg = "Insert Error:";
                    msg += ex.Message;
                    throw new Exception(msg);


                }
                finally
                {
                    Response.Redirect("Contact.aspx");
                    con.Close();
                }

            }
            else
            {
                string str2 = "Not Sent";
                Response.Write("<script language=javascript>alert('" + str2 + "');</script>");
            }



        }

        private bool sendMail(Email email)
        {
            bool status = false;
            try
            {
                string MailSender = "didi_karv@msn.com";
                string MailPw = "Outlook12";

                SmtpClient smtpClient = new SmtpClient("smtp.office365.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Timeout = 100000;
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential(MailSender, MailPw);

                MailMessage mailMessage = new MailMessage(MailSender, email.To, email.Subject, email.Message);
                mailMessage.IsBodyHtml = true;
                mailMessage.BodyEncoding = System.Text.UTF8Encoding.UTF8;

                smtpClient.Send(mailMessage);

                status = true;
                return status; ;
            }
            catch (Exception ex)
            {
                return status;
            }
        }

        protected void btnInscription(object sender, EventArgs e)

        {
            if (sendConfirmation(new Email { To = TxtTo.Text, Subject = "Voyage", Message = "We will get back to you shortly with additional information!" }))
            {
                string str = "Sent";
                Response.Write("<script language=javascript>alert('" + str + "');</script>");
            }
            else
            {
                string str2 = "Not Sent";
                Response.Write("<script language=javascript>alert('" + str2 + "');</script>");
            }

        }

        private bool sendConfirmation(Email email)
        {
            bool status = false;
            try
            {
                string MailSender = "didi_karv@msn.com";
                string MailPw = "Outlook12";

                SmtpClient smtpClient = new SmtpClient("smtp.office365.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Timeout = 100000;
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential(MailSender, MailPw);

                MailMessage mailMessage = new MailMessage(MailSender, email.To, email.Subject, email.Message);
                mailMessage.IsBodyHtml = true;
                mailMessage.BodyEncoding = System.Text.UTF8Encoding.UTF8;

                smtpClient.Send(mailMessage);

                status = true;
                return status; ;
            }
            catch (Exception ex)
            {
                return status;
            }
        }


    }
        }
    

