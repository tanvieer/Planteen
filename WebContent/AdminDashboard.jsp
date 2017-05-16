<%@include file="adminTopNav.jsp"%>
<%@include file="adminSideNav.jsp"%>

<!-- Main content -->
<main class="main" style="background:white">  <!-- Breadcrumb -->


<div class="row">
	<div class="col-md-12 card-deck">
          <!-- <div class="col-sm-6 col-md-2"> -->
              <div class="card card-inverse card-info">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-people"></i>
                      </div>
                      <div class="h4 mb-0">${pendingList}</div>
                      <small class="text-muted text-uppercase font-weight-bold">Pending Invoices</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          <!-- </div> -->
          <!--/.col-->
          <!-- <div class="col-sm-6 col-md-2"> -->
              <div class="card card-inverse card-success">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-user-follow"></i>
                      </div>
                      <div class="h4 mb-0">${registeredToday}</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Registered</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
         <!--  </div> -->
          <!--/.col-->
         <!--  <div class="col-sm-6 col-md-2"> -->
              <div class="card card-inverse card-warning">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-basket-loaded"></i>
                      </div>
                      <div class="h4 mb-0">${deliveredToday}</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Completed Deliveries</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
         <!--  </div> -->
          <!--/.col-->
          <!-- <div class="col-sm-6 col-md-2"> -->
              <div class="card card-inverse card-primary">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-pie-chart"></i>
                      </div>
                      <div class="h4 mb-0">${placedToday}</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Placed Invoices</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          <!-- </div> -->
          <!--/.col-->
          <!-- <div class="col-sm-6 col-md-2"> -->
              <div class="card card-inverse card-danger">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-speedometer"></i>
                      </div>
                      <div class="h4 mb-0">${profitToday}</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Profit</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          <!-- </div> -->
          <!--/.col-->
         <!--  <div class="col-sm-6 col-md-2"> -->
              <div class="card card-inverse card-info">
                  <div class="card-block">
                      <div class="h1 text-muted text-right mb-4">
                          <i class="icon-speech"></i>
                      </div>
                      <div class="h4 mb-0">972</div>
                      <small class="text-muted text-uppercase font-weight-bold">Today's Sale</small>
                      <div class="progress progress-white progress-xs mt-3">
                          <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                  </div>
              </div>
          <!-- </div> -->
          <!--/.col-->
 </div>
 </div>
 
 
 <!-- Critical Product Chart start -->
 
 
 <table class="table table-hover table-outline mb-0 hidden-sm-down">
                                        <thead class="thead-default">
                                            <tr>
                                                <th class="text-center"><i class="icon-people"></i>
                                                </th>
                                                <th>Product Name</th>
                                                <th class="text-center">Quantity</th>
                                                <th>Percentage</th>
                                                <th class="text-center">Daily Average Sell</th>
                                                <th>Activity</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           
                                           
                                <c:forEach varStatus="loop" begin="1" end="10" step="1">
									<tr>
                                          <td class="text-center">
                                              <div class="avatar">
                                                  <img src="img/avatars/${loop.index}.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                                                  <span class="avatar-status badge-default"></span>
                                              </div>
                                          </td>
                                          <td>
                                              <div>Samsung</div>
                                              <div class="small text-muted">
                                                  <span>New</span>| Registered: Jan 1, 2015
                                              </div>
                                          </td>
                                          <td class="text-center">
                                              <img src="img/flags/France.png" alt="France" style="height:24px;">
                                          </td>
                                          <td>
                                              <div class="clearfix">
                                                  <div class="float-left">
                                                      <strong>${loop.index}0%</strong>
                                                  </div>
                                                  <div class="float-right">
                                                      <small class="text-muted">Jun 11, 2015 - Jul 10, 2015</small>
                                                  </div>
                                              </div>
                                              <div class="progress progress-xs">
                                                  <div class="progress-bar bg-danger" role="progressbar" style="width: ${loop.index}0%" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"></div>
                                              </div>
                                          </td>
                                          <td class="text-center">
                                              <i class="fa fa-paypal" style="font-size:24px"></i>
                                          </td>
                                          <td>
                                              <div class="small text-muted">Last login</div>
                                              <strong>Last month</strong>
                                          </td>
                                      </tr>
								</c:forEach>
								   
                               </tbody>
                           </table>
 
 
 
 
 <!-- Critical product chart end -->
 
 
 
 

</main>
<%@include file="adminAsideNav.jsp"%>
<%@include file="adminFooter.jsp"%>