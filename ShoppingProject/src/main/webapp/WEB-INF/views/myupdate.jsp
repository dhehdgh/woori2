<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

 <%@ include file="include/header.jsp" %>
<body>
  <section class="cat_product_area section_padding">
      <div class="container">
         <div class="row">
    <!-- banner part start-->			
           <div class = "container grid px-6 mx-auto">                 		 
                  <%@ include file="include/mypage_left_column.jsp" %>      
                  <div class="flex items-center">                              
	                  <svg
	                    class="w-5 h-5 mr-2"
	                    fill="currentColor"
	                    viewBox="0 0 20 20"
	                   >
	                  </svg>
               	 </div>
               <div>               	             
	               <h4
	                 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300"
	               >
	                 내정보수정
	               </h4>                  
                    <div class="w-full overflow-x-auto" >
                      <table class="w-full whitespace-no-wrap">
                        <thead>
                          <tr
                            class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800"
                          >
                            <th class="px-4 py-3">Client</th>                    
                            <th class="px-4 py-3">Actions</th>
                          </tr>
                        </thead>
                        <tbody
                        
                          class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800"
                        >
                          <tr class="text-gray-700 dark:text-gray-400">
                            <td class="px-4 py-3">
                              <div class="flex items-center text-sm">
                                <!-- Avatar with inset shadow -->
                                <div
                                  class="relative hidden w-8 h-8 mr-3 rounded-full md:block"
                                >
                                  <img
                                    class="object-cover w-full h-full rounded-full"
                                    src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjE3Nzg0fQ"
                                    alt=""
                                    loading="lazy"
                                  />
                                  <div
                                    class="absolute inset-0 rounded-full shadow-inner"
                                    aria-hidden="true"
                                  ></div>
                                </div>
                                <div>
                                  <p class="font-semibold">Hans Burger</p>
                                  <p class="text-xs text-gray-600 dark:text-gray-400">
                                    10x Developer
                                  </p>
                                </div>
                              </div>
                            </td>                                                              
                            <td class="px-4 py-3">
                              <div class="flex items-center space-x-4 text-sm">
                               <button
		                            class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray"
		                            aria-label="Edit"
		                          >
		                            <svg
		                              class="w-5 h-5"
		                              aria-hidden="true"
		                              fill="currentColor"
		                              viewBox="0 0 20 20"
		                            >
		                              <path
		                                d="M13.586 3.586a2 2 0 112.828 2.828l-.793.793-2.828-2.828.793-.793zM11.379 5.793L3 14.172V17h2.828l8.38-8.379-2.83-2.828z"
		                              ></path>
		                            </svg>
		                          </button>
                                <button
                                  class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray"
                                  aria-label="Delete"
                                >
                                  <svg
                                    class="w-5 h-5"
                                    aria-hidden="true"
                                    fill="currentColor"
                                    viewBox="0 0 20 20"
                                  >
                                    <path
                                      fill-rule="evenodd"
                                      d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z"
                                      clip-rule="evenodd"
                                    ></path>
                                  </svg>
                                </button>
                              </div>
                            </td>
                          </tr>
                       </tbody>   
                     </table> 
                   </div>                                     
                </div>       
            </div>
       </div>          
    </div>       
 </section>                                                   
<script>
    window.addEventListener('DOMContentLoaded', (event) => {
        // Get the main checkbox element
        const mainCheckbox = document.getElementById('mainCheckbox');

        // Get all the list checkboxes
        const listCheckboxes = document.getElementsByClassName('listCheckbox');

        // Add event listener to the main checkbox
        mainCheckbox.addEventListener('change', function () {
            // Iterate through all the list checkboxes and set their checked property
            for (let i = 0; i < listCheckboxes.length; i++) {
                listCheckboxes[i].checked = mainCheckbox.checked;
            }
        });
    });
</script>

</body>
 <!--::footer_part start::-->
      <%@ include file="include/footer.jsp" %>
       <!--::footer_part end::-->
   
       <!-- jquery plugins here-->
      <%@ include file="include/javascript.jsp" %>
       <%@ include file="include/style.jsp" %>


</html>