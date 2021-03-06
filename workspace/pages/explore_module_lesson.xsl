<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">

        <xsl:if test="position() &lt;=4">
            
        </xsl:if>


        <!-- Start: Features Section 
        =================================-->
        <div class="features-section">
            <div class="container">
                <div class="row features-item section-separator">
                                                                 
                    <xsl:call-template name="learn-subheader"/> 
                    
                    <div class="lesson-top-picture">
                        <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="margin-bottom: 20px"/>
                    </div>            

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                        <div class="guide-team">
                            <div class="guide-team-inner">
                                <div class="col-mc-3 col-sm-3"></div>
                                <div class="section-header relative text-center col-mc-6 col-sm-6 col-xs-12" >                
                                    <h2 class="section-heading" ><xsl:value-of select="/data/lesson/entry/title"/></h2>
                                </div>
                                <div class="lesson-definitions  col-sm-7 col-md-7
                                    " style="margin-top: -30px;">
                                    <div class="lesson-top-picture">
                                        <div class="media">
                                            <div class="media-body-left"><p class="blue-text" style="font-size: 30px; float: left;"><b>
                                               <xsl:value-of select="/data/lesson/entry/user/item"/></b></p>
                                            </div>              

                                            <xsl:apply-templates select='/data/users/entry[@id = /data/lesson/entry/user/item/@id]' mode='user-picture-country'>
                                                <xsl:with-param name='include-name' select='false()'/>
                                                <xsl:with-param name='class' select='"media-body-left"'/>
                                                <xsl:with-param name='img-class' select='""'/>
                                            </xsl:apply-templates>                
                                        </div>      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">

                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                             <div class="lesson-text">
                                 <xsl:apply-templates select="/data/lesson/entry[1]/text" mode='html-child'/>
                             </div>
                        </div>

                        <xsl:if test='/data/lesson/entry[1]/attachments/file'>
                            <div class='attachments text-left col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12'>
                                <h3>Resources</h3>
                                <ul>
                                    <xsl:for-each select='/data/lesson/entry[1]/attachments/file'>
                                        <li>
                                            <a href='{@source}'>
                                                <xsl:value-of select='@name'/>
                                            </a>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </xsl:if>

                         <!-- <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                             <div class="lesson-definitions">
                                <div class="lesson-definitions-line">
                                    <p class="blue-text">Place the definition in the right order.</p><br/>
                                </div>
                                <div class="lesson-definitions-line">
                                    <div class="lesson-definitions-line-left">
                                        <p class="bold">LEADER</p>
                                    </div>
                                    <div class="lesson-definitions-line-right">
                                        <p class="blue-text">administers a group</p>
                                    </div>
                                </div>
                                <div class="lesson-definitions-line">
                                    <div class="lesson-definitions-line-left">
                                        <p class="bold">MANAGEER</p>
                                    </div>
                                    <div class="lesson-definitions-line-right">
                                        <p class="blue-text" >is in charge of a group</p>
                                    </div>
                                </div>
                                <div class="lesson-definitions-line">
                                    <div class="lesson-definitions-line-left">
                                        <p class="bold">COACH</p>
                                    </div>
                                    <div class="lesson-definitions-line-right">
                                        <p class="blue-text">maximises a team's potential</p>
                                    </div>
                                </div>
                                <div class="lesson-definitions-line">
                                    <div class="lesson-definitions-line-left">
                                        <p class="bold">BOSS</p>
                                    </div>
                                    <div class="lesson-definitions-line-right">
                                        <p class="blue-text">instructs and trains</p>
                                    </div>
                                </div>
                             </div>
                        </div> -->

                    </div> <!-- /.each-features -->
                    
                
                     <div class="col-xs-12 each-features" style="margin-bottom: 0px;">


                        <div class="col-xs-12 each-features margin-b-20" style="margin-bottom: 0px; height: 100px;">
                            <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" >

                                <xsl:apply-templates select="/data/lesson/entry" mode="likeviews"/>
                                
                            </div>
                        </div>

                            

                        <xsl:call-template name="show-comments"/> 


                            

                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px; margin-top: 70px;">

                        <div class="single-comment col-xs-12">
                            <div class="row single-comments-inner">
                                <div class="down-buttons-lesson">
                                    <div class="col-md-1 col-sm-1" ></div> 
                                    <div class="col-md-10 col-sm-10">
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-12 col-md-4 col-sm-6 text-center margin-t-50" style="margin-top: 5px;">

                                            <a href="#" class="btn btn-border text-normal" data-toggle="modal" data-target="#myModal3">
                                                <h3 style="font-size: 30px; line-height: 60%; margin-top: 6%;" class="title hovere-color-change"><i class="fa fa-chevron-left" aria-hidden="true"></i> STUDY </h3> 
                                            </a><!-- Modal -->

                                  			<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
                                              <div class="modal-dialog col-xs-1" role="document">
                                                <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 20%; width: 150%;  height: 400px;">
                                                  <div class="modal-header " style="border: 0px; margin: 10px;">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
                                                        <span aria-hidden="true" style="font-weight: bold;">
                                                        </span>
                                                    </button>                                                    
                                                  </div>

                                                  <div class="new-class" style=" height: 500px; margin-right: auto; margin-left: auto; text-align: center; ">
                                                        <h2 class="section-heading">Nice!</h2>
                                                        <br/>
                                                        All your answers were perfect. You're up by 10XP<br/>and one step closer to finish this module!<br/><br/><br/>
                                                        <a href="#" class="btn btn-border">Next Lesson</a>                                                                      
                                                  </div>                                                      
                                                </div>
                                              </div>
                                            </div>

                                        </div>   
                                    </div>  

                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-12 col-md-4 col-sm-4 text-center margin-t-10">
                                            <div class="wraper-like-comment-share">
                                                <div class="btn hovere-change" >
                                                    <i class="fa fa-like-love-streamline hovere-color-change"></i>
                                                </div>
                                                <div id="comment-toggle" class="btn hovere-change" >
                                                    <i class="fa fa-commenting-o hovere-color-change" aria-hidden="true"></i>

                                                </div>
                                                <div  class="btn hovere-change">
                                                    <i class="fa fa-share-square-o hovere-color-change" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 

                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-12 col-md-4 col-sm-12 text-center margin-t-50" style="margin-top: 5px;">

                                            <a href="#" data-target="#quiz-modal"  data-toggle="modal" class="btn btn-border text-normal">                                           
                                                <h3 style="font-size: 30px; margin-top: 6%; line-height: 60%;" class="title hovere-color-change"> Mini Quiz <i class="fa fa-chevron-right" aria-hidden="true"></i> </h3>
                                            </a><!-- Modal -->

                                            <xsl:apply-templates select='/data/lesson/entry' mode='quiz-modal'/>
                                        </div>  
                                    </div> 
                                    </div>
                                    <div class="col-md-1 col-sm-1" ></div>

                                </div>
                            </div>
                        </div> <!-- /.single-comment -->

                    </div> <!-- /.each-features -->
                        

                </div> <!-- /.row -->
                <div class="col-md-1 col-sm-1" ></div>

                            <xsl:call-template name="write-comment"/> 
                            
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->

</xsl:template>

</xsl:stylesheet>
