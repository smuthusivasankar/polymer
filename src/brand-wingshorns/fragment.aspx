<%@ Page Language="C#" %>
<script runat=server>
protected String GetJSONFromQueryString()
{
    string jsonString = "";
    string contentId = Request.QueryString["contentId"];
    if(!string.IsNullOrEmpty(contentId)){
        return "{\"contentId\" : \"" + contentId + "\"}";
    } 
    string fragmentType = "Brand-Page-Owl-Carousel";
    string brandName = Request.QueryString["brandName"];
    if (!string.IsNullOrEmpty(brandName)) {
        return "{\"fragmentType\" : \"" + fragmentType + "\",\"brandName\" :\"" + brandName + "\",\"category\" :\"\"}";
    }

    string category = Request.QueryString["category"];
    if (!string.IsNullOrEmpty(brandName))
    {
        return "{\"fragmentType\" : \"" + fragmentType + "\",\"brandName\" :\"\",\"category\" :\"" + category + "\"}";
    }
    
    return jsonString;
}
</script>

<link rel="import" href="http://10.67.90.232:88/src/brand-wingshorns/brand-wingshorns.html">
<brand-wingshorns filter='<%= GetJSONFromQueryString()%>'></brand-wingshorns>
