<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
	    <div class="features-section">
	        <div class="container">
	            <div class="row features-item section-separator">

                    <xsl:call-template name="share-subheader"/> 

                </div>
            </div>
            <xsl:choose>
                <xsl:when test='/data/params/lesson-id != ""'>
                    <!-- form here -->
                    <xsl:apply-templates select='/data/my-lessons/entry' mode='lesson-form'>
                    </xsl:apply-templates>
                    <xsl:if test='not(/data/my-lessons/entry)'>
                        <xsl:call-template name='lesson-form'/>
                    </xsl:if>
                </xsl:when>
                <xsl:otherwise>
                    <div class="container">
                        <div class="row">

                            <div class="guide-team-content col-xs-12">
                                <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                                                       
                                <h2 class="title-centre">YOUR DRAFTS</h2>
                                <p class="cta-text">Publishing your stories will bring you closer to your Active Citizenship badge!</p>
                                </div> <!-- /.each-features -->  

                                <div class="row">
                                    <div class="each-item col-sm-1 col-md-2"></div>           
                                        <div class="each-item col-sm-10 col-md-8">
                                        <xsl:apply-templates select="/data/my-lessons/entry[status/item/@handle='draft']" mode="list-item">
                                            <xsl:with-param name='edit-link' select='true()'/>
                                        </xsl:apply-templates>
                                    </div>
                                    <div class="each-item col-sm-2 col-md-2"></div>
                                </div>

                                <div class="btn-form col-xs-12 text-center">
                                    <a href="{/data/params/root}/share/lesson/new/" class="btn btn-border-button">Create new lesson</a>
                                </div>
                            </div>

                            <xsl:if test="/data/my-lessons/entry[status/item/@handle='review']">
                                <div class="guide-team-content col-xs-12">
                                    <h2 class="title-centre margin-b-20 margin-t-70">PENDING APPROVAL</h2>
                                    <div class="row" >

                                        <div class="each-item col-sm-1 col-md-2"></div>           
                                        <div class="each-item col-sm-10 col-md-8">
                                            <xsl:apply-templates select="/data/my-lessons/entry[status/item/@handle='review']" mode="list-item"/>      
                                        </div>
                                        <div class="each-item col-sm-1 col-md-2"></div>  
                                    </div>
                                </div>
                            </xsl:if>

                            <xsl:if test="/data/my-lessons/entry[status/item/@handle='published']">
                                <div class="guide-team-content col-xs-12 margin-t-70">
                                    <h2 class="title-centre margin-b-20 margin-t-50">PUBLISHED LESSONS</h2>
                                    <div class="row margin-t-50">
                                        <div class="each-item col-sm-1 col-md-2"></div>
                                        <div class="each-item col-sm-10 col-md-8">
                                            <xsl:apply-templates select="/data/my-lessons/entry[status/item/@handle='published']" mode="list-item"/>    
                                        </div> <!-- /.each-item -->
                                    </div>
                                </div>
                            </xsl:if>

                             <div class="btn-form col-xs-12 text-center margin-t-70">
                             <p class="cta-text">Get inspired!</p>
                                <a href="{/data/params/root}/explore/#modules" class="btn btn-border-button">Explore</a>
                            </div>
                        </div> <!-- /.row -->
                    </div> <!-- /.container -->

                </xsl:otherwise>
            </xsl:choose>

        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>