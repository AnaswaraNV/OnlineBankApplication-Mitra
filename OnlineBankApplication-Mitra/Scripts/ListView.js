<script type="text/javascript">
    function ValidateListBox()
    {

        dim ListBox = document.getElementById('<%=Listbox1.ClientID %>');
        var length = ListBox.length;
        var i = 0;
        var SelectedItemCount = 0;

        for(i=0;i<length; i++)

        {

            if(ListBox.options[i].selected)

            {

        SelectedItemCount = SelectedItemCount + 1;

    }



            if(SelectedItemCount > 3)
            {
        alert('More than 3 items selected in listbox.');
    return false;
            }
        }


    }


    </script>
