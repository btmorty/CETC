using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Common; //needed to use the Generic Db objects required by GenericDataAccess.cs


public static class ClientAccess
{
	static ClientAccess()
	{
		//empty constructor
	}

    //This method gets all authors from the database by calling the "GetAllAuthorNames" stored procedure.
    //Results are returned in a DataTable object
    public static DataTable GetAllAuthorNames()
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "GetAllAuthorNames";  //This is the name of the stored procedure to be executed
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    public static DataTable NewGetAllAuthorNames()
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "NewGetAllAuthorNames";  //This is the name of the stored procedure to be executed
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }


    //This method updates author information using the "UpdateContact" stored procedure.  The names of the method parameters should match the names of the fields in the corresponding data control (e.g. Gridview, Detailsview, etc.)
    //The method returns an int representing the number of rows affected.  This can be used to verify a successful operation, or it can be discarded
    public static int UpdateContact(int ClientID, int AddressID, int ContactID, string First_Name, string Last_Name, string Relationship, string Emergency_Contact, string Guardian, string Address, string City, string State, string Zip, string Email, string Home_Phone, string Mobile_Phone, string Work_Phone)
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "UpdateContact"; //This is the name of the stored procedure to be executed

        //The following code adds the neccessary parameters to the DbCommand object
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@ClientID";
        param.DbType = DbType.Int32;
        param.Value = ClientID;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@AddressID";
        param.DbType = DbType.Int32;
        param.Value = AddressID;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@ContactID";
        param.DbType = DbType.Int32;
        param.Value = ContactID;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@First_Name";
        param.DbType = DbType.String;
        param.Value = First_Name;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Last_Name";
        param.DbType = DbType.String;
        param.Value = Last_Name;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Relationship";
        param.DbType = DbType.String;
        param.Value = Relationship;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Emergency_Contact";
        param.DbType = DbType.String;
        param.Value = Emergency_Contact;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Guardian";
        param.DbType = DbType.String;
        param.Value = Guardian;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Address";
        param.DbType = DbType.Byte;
        param.Value = Address;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@City";
        param.DbType = DbType.Byte;
        param.Value = City;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@State";
        param.DbType = DbType.Byte;
        param.Value = State;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Zip";
        param.DbType = DbType.Byte;
        param.Value = Zip;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Email";
        param.DbType = DbType.Byte;
        param.Value = Email;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Home_Phone";
        param.DbType = DbType.Byte;
        param.Value = Home_Phone;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Mobile_Phone";
        param.DbType = DbType.Byte;
        param.Value = Mobile_Phone;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Work_Phone";
        param.DbType = DbType.Byte;
        param.Value = Work_Phone;
        comm.Parameters.Add(param);


        int rowsAffected = GenericDataAccess.ExecuteNonQuery(comm);
        return rowsAffected;
    }

    //This method gets author information for a selected author from the database by calling the "GetAuthorInfoByID" stored procedure.
    //Results are returned in a DataTable object
    public static DataTable GetClientInfoByID(string au_id)
    {

        DbCommand comm = GenericDataAccess.CreateCommand();
        //set the name of the stored procedure
        comm.CommandText = "GetAuthorInfoByID";
        //create a parameter for au_id and attach to comm
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@au_id";
        param.DbType = DbType.String;
        param.Value = au_id;
        comm.Parameters.Add(param);

        //execute the select query
        DataTable results = GenericDataAccess.ExecuteSelectCommand(comm);

        //returnt the results to the caller method
        return results;

    }

    //This method inserts a new author using the "InsertAuthor" stored procedure.  The names of the method parameters should match the names of the fields in the corresponding data control (e.g. Gridview, Detailsview, etc.)
    //The method returns an int representing the number of rows affected.  This can be used to verify a successful operation, or it can be discarded
    public static int InsertClient
        (
            string Status,
            string First_Name,
            string Last_Name,
            DateTime DOB,
            int Age,
            string Address,
            string City,
            string State,
            string Zip,
            string Email,
            string Phone,
            string Sex,
            string Race,
            string Residential_Status,
            string Preferred_Language,
            string Religious_Affiliation,
            int SSN,
            string Staffing_Ratio,
            int DSPD,
            int SSI,
            int SSA,
            string Modes_Communication,
            string Diagnosis,
            string PhotoID
        )
    {

        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "InsertClient"; //This is the name of the stored procedure to be executed

        //The following code adds the neccessary parameters to the DbCommand object
        DbParameter param = comm.CreateParameter();

        param = comm.CreateParameter();
        param.ParameterName = "@Status";
        param.DbType = DbType.String;
        param.Value = Status;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@First_Name";
        param.DbType = DbType.String;
        param.Value = First_Name;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Last_Name";
        param.DbType = DbType.String;
        param.Value = Last_Name;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@DOB";
        param.DbType = DbType.String;
        param.Value = DOB;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Age";
        param.DbType = DbType.Int32;
        param.Value = Age;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Address";
        param.DbType = DbType.String;
        param.Value = Address;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@City";
        param.DbType = DbType.String;
        param.Value = City;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@State";
        param.DbType = DbType.String;
        param.Value = State;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Zip";
        param.DbType = DbType.Int32;
        param.Value = Zip;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Email";
        param.DbType = DbType.String;
        param.Value = Email;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Phone";
        param.DbType = DbType.String;
        param.Value = Phone;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Sex";
        param.DbType = DbType.String;
        param.Value = Sex;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Race";
        param.DbType = DbType.String;
        param.Value = Race;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Residential_Status";
        param.DbType = DbType.String;
        param.Value = Residential_Status;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Preferred_Language";
        param.DbType = DbType.String;
        param.Value = Preferred_Language;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Religious_Affiliation";
        param.DbType = DbType.String;
        param.Value = Religious_Affiliation;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@SSN";
        param.DbType = DbType.Int32;
        param.Value = SSN;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Staffing_Ratio";
        param.DbType = DbType.String;
        param.Value = Staffing_Ratio;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@DSPD";
        param.DbType = DbType.Int32;
        param.Value = DSPD;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@SSI";
        param.DbType = DbType.Int32;
        param.Value = SSI;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@SSA";
        param.DbType = DbType.Int32;
        param.Value = SSA;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Modes_Communication";
        param.DbType = DbType.String;
        param.Value = Modes_Communication;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Diagnosis";
        param.DbType = DbType.String;
        param.Value = Diagnosis;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@PhotoID";
        param.DbType = DbType.String;
        param.Value = PhotoID;
        comm.Parameters.Add(param);

        int rowsAffected = GenericDataAccess.ExecuteNonQuery(comm);
        return rowsAffected;
    }

    //This method updates author information using the "UpdateCETCInfo" stored procedure.  The names of the method parameters should match the names of the fields in the corresponding data control (e.g. Gridview, Detailsview, etc.)
    //The method returns an int representing the number of rows affected.  This can be used to verify a successful operation, or it can be discarded
    public static int Update_CETC_Info(int ClientID, string CETCID, string Service, string DeptHead, string Coordinator)
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "Update_CETC_Info"; //This is the name of the stored procedure to be executed

        //The following code adds the neccessary parameters to the DbCommand object
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@ClientID";
        param.DbType = DbType.Int32;
        param.Value = ClientID;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@CETCID";
        param.DbType = DbType.Int32;
        param.Value = CETCID;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Service";
        param.DbType = DbType.String;
        param.Value = Service;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@DeptHead";
        param.DbType = DbType.String;
        param.Value = DeptHead;
        comm.Parameters.Add(param);

        param = comm.CreateParameter();
        param.ParameterName = "@Coordinator";
        param.DbType = DbType.String;
        param.Value = Coordinator;
        comm.Parameters.Add(param);


        int rowsAffected = GenericDataAccess.ExecuteNonQuery(comm);
        return rowsAffected;
    }

    //This method deletes an author using the "DeleteAuthor" stored procedure.  The names of the method parameters should match the names of the fields in the corresponding data control (e.g. Gridview, Detailsview, etc.)
    //The method returns an int representing the number of rows affected.  This can be used to verify a successful operation, or it can be discarded
    public static int DeleteAuthor(string au_id)
    {

        DbCommand comm = GenericDataAccess.CreateCommand();
        //set the name of the stored procedure
        comm.CommandText = "DeleteAuthor";
        //create a parameter for au_id and attach to comm
        DbParameter param = comm.CreateParameter();
        param.ParameterName = "@au_id";
        param.DbType = DbType.String;
        param.Value = au_id;
        comm.Parameters.Add(param);

        //execute the select query
        int results = GenericDataAccess.ExecuteNonQuery(comm);

        //returnt the results to the caller method
        return results;
    }

}
