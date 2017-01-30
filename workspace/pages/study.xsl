<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>
<xsl:import href="../sections/modulesstory.xsl"/>
<xsl:import href="../sections/studyprofile.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfilesubheader"/>  

                    <div class="col-xs-12" style="margin-bottom: 0px;">
                    <div class="col-xs-2"></div>
                    <div class="col-xs-8 each-features" >

                        <div class="guide-team-inner">                                
                            <!-- Start: Section Header -->
                            <div class="section-header relative text-center">
                            
                                <h2 class="section-heading margin-b-thirty">Introduction to Leadership</h2>
                                <p class="blue-text-centre">Finish this module to earn your first Leadership badge!</p>
                            </div>                                 
                        </div>

                        <div class="box-border progress-box">
                            <div class="box-sharp-edge" style="width: 25%; background-color: orange; ">
                            </div>
                            <div class="box-sharp-edge" style="width: 25%; background-color: #3489DA;">
                            </div>
                            <div class="box-sharp-edge" style="width: 25%;">
                            </div><br/>
                        </div>

                        <div class="study-timeline-progress" >
                            <div class="study-timeline-progress-circles" style="margin-left: 22%;">
                                1
                            </div> 
                            <div class="study-timeline-progress-circles"  style="margin-left: 39%;">
                                2
                            </div>
                            <div class="study-timeline-progress-circles"  style="margin-left: 55%;">
                                3
                            </div>
                            <div class="study-timeline-progress-circles"  style="margin-left: 70%;">
                                4
                            </div>
                        </div>


                        <br/><br/>
                        <div class="col-xs-12 each-features" style="margin-top: 50px;">
                        
                            <div class="guide-team-content">  
                                <div class="col-md-1"></div>
                                <div class="col-md-10">      
                            	<xsl:if test="position() &lt;=1">
	                            	<xsl:apply-templates select="/data/lesson/entry[4]" mode="studylesson"/>
	                            </xsl:if>
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                        </div>

                    </div> <!-- /.each-features -->
                    <div class="col-xs-2"></div>
                    </div>


                    <div class="col-xs-12">
                    <div class="col-xs-2"></div>
                    <div class="col-xs-8 each-features">

                        <div class="guide-team-inner">
                                
                                <!-- Start: Section Header -->
                                <div class="section-header relative text-center">
                                
                                    <h2 class="section-heading margin-b-thirty">Becoming a Sustainable Community</h2>
                                    <p class="blue-text-centre">Let's get started.</p>                        
                                </div>                                 
                        </div>

                        <div class="box-border progress-box" >
                            <div class="box-sharp-edge" style="width: 20%; background-color: #3489DA;">
                            </div>
                            <div class="box-sharp-edge" style="width: 20%;">
                            </div>
                            <div class="box-sharp-edge" style="width: 20%;">
                            </div>
                            <div class="box-sharp-edge" style="width: 20%;">
                            </div>
                        </div>


                        <div class="col-xs-12 each-features" style="margin-bottom: 70px;">
                            <div class="study-timeline-progress">
                                <div class="study-timeline-progress-circles" style="margin-left: 20%;">
                                    1
                                </div> 
                                <div class="study-timeline-progress-circles"  style="margin-left: 34%;">
                                    2
                                </div>
                                <div class="study-timeline-progress-circles"  style="margin-left: 47%;">
                                    3
                                </div>
                                <div class="study-timeline-progress-circles"  style="margin-left: 62%;">
                                    4
                                </div>
                                <div class="study-timeline-progress-circles"  style="margin-left: 75%;">
                                    5
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 each-features margin-b-thirty">
                            <div class="guide-team-content">
                                <div class="col-md-1"></div>
                                <div class="col-md-10"> 
                                <xsl:if test="position() &lt;=1">
	                            	<xsl:apply-templates select="/data/lesson/entry[5]" mode="studylesson"/>
	                            </xsl:if> 
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                        </div>
                    <div class="col-xs-2"></div>
                    </div>


                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features">

                        <div class="single-comment col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                            <div class="row single-comments-inner">

                                <div class="media">
                                    
                                    <div class="media-body">

                                        <P class="blue-text-centre">Looking for more lessons?</P>

                                    </div> <!-- /.media-body -->
                                </div> <!-- /.media -->

                                <div class="btn-form col-xs-12 text-center margin-t-50" style="margin-top: 20px;">
                                    <a href="#" class="btn btn-border text-normal">Explore</a>
                                </div>
                                
                            </div>
                        </div> <!-- /.single-comment -->

                    </div> <!-- /.each-features -->
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>

</xsl:stylesheet>
