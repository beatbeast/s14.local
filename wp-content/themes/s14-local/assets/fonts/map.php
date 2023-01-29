<!-- <?php

if(!function_exists('s14_fonts_options_map')) {
    /**
     * Fonts options page
     */
    function s14_local_fonts_options_map(){
        global $s14_local_qode_options;

        $fontsPage = new s14_localAdminPage("_fonts", esc_html__("Fonts", "s14_local"), "fa fa-font");
        s14_local_framework()->qodeOptions->addAdminPage("fonts", $fontsPage);

        // Headings

        $panel1 = new s14_localPanel(esc_html__("Headings", "s14_local"), "headings_panel");
        $fontsPage->addChild("panel1", $panel1);

        $group1 = new s14_localGroup(esc_html__("H1 Style", "s14_local"), esc_html__("Define styles for H1 heading", "s14_local"));
        $panel1->addChild("group1", $group1);
        $row1 = new s14_localRow();
        $group1->addChild("row1", $row1);
        $h1_color = new s14_localField("colorsimple", "h1_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h1_color", $h1_color);
        $h1_fontsize = new s14_localField("textsimple", "h1_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h1_fontsize", $h1_fontsize);
        $h1_lineheight = new s14_localField("textsimple", "h1_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h1_lineheight", $h1_lineheight);
        $h1_texttransform = new s14_localField("selectblanksimple", "h1_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row1->addChild("h1_texttransform", $h1_texttransform);
        $row2 = new s14_localRow(true);
        $group1->addChild("row2", $row2);
        $h1_google_fonts = new s14_localField("fontsimple", "h1_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h1_google_fonts", $h1_google_fonts);
        $h1_fontstyle = new s14_localField("selectblanksimple", "h1_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"),  s14_local_get_font_style_array());
        $row2->addChild("h1_fontstyle", $h1_fontstyle);
        $h1_fontweight = new s14_localField("selectblanksimple", "h1_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("h1_fontweight", $h1_fontweight);
        $h1_letterspacing = new s14_localField("textsimple", "h1_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h1_letterspacing", $h1_letterspacing);

        $group2 = new s14_localGroup(esc_html__("H2 Style", "s14_local"), esc_html__("Define styles for H2 heading", "s14_local"));
        $panel1->addChild("group2", $group2);
        $row1 = new s14_localRow();
        $group2->addChild("row1", $row1);
        $h2_color = new s14_localField("colorsimple", "h2_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h2_color", $h2_color);
        $h2_fontsize = new s14_localField("textsimple", "h2_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h2_fontsize", $h2_fontsize);
        $h2_lineheight = new s14_localField("textsimple", "h2_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h2_lineheight", $h2_lineheight);
        $h2_texttransform = new s14_localField("selectblanksimple", "h2_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"),  s14_local_get_text_transform_array());
        $row1->addChild("h2_texttransform", $h2_texttransform);
        $row2 = new s14_localRow(true);
        $group2->addChild("row2", $row2);
        $h2_google_fonts = new s14_localField("fontsimple", "h2_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h2_google_fonts", $h2_google_fonts);
        $h2_fontstyle = new s14_localField("selectblanksimple", "h2_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("h2_fontstyle", $h2_fontstyle);
        $h2_fontweight = new s14_localField("selectblanksimple", "h2_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("h2_fontweight", $h2_fontweight);
        $h2_letterspacing = new s14_localField("textsimple", "h2_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h2_letterspacing", $h2_letterspacing);

        $group3 = new s14_localGroup(esc_html__("H3 Style", "s14_local"), esc_html__("Define styles for H3 heading", "s14_local"));
        $panel1->addChild("group3", $group3);
        $row1 = new s14_localRow();
        $group3->addChild("row1", $row1);
        $h3_color = new s14_localField("colorsimple", "h3_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h3_color", $h3_color);
        $h3_fontsize = new s14_localField("textsimple", "h3_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h3_fontsize", $h3_fontsize);
        $h3_lineheight = new s14_localField("textsimple", "h3_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h3_lineheight", $h3_lineheight);
        $h3_texttransform = new s14_localField("selectblanksimple", "h3_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row1->addChild("h3_texttransform", $h3_texttransform);
        $row2 = new s14_localRow(true);
        $group3->addChild("row2", $row2);
        $h3_google_fonts = new s14_localField("fontsimple", "h3_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h3_google_fonts", $h3_google_fonts);
        $h3_fontstyle = new s14_localField("selectblanksimple", "h3_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("h3_fontstyle", $h3_fontstyle);
        $h3_fontweight = new s14_localField("selectblanksimple", "h3_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("h3_fontweight", $h3_fontweight);
        $h3_letterspacing = new s14_localField("textsimple", "h3_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h3_letterspacing", $h3_letterspacing);

        $group4 = new s14_localGroup(esc_html__("H4 Style", "s14_local"), esc_html__("Define styles for H4 heading", "s14_local"));
        $panel1->addChild("group4", $group4);
        $row1 = new s14_localRow();
        $group4->addChild("row1", $row1);
        $h4_color = new s14_localField("colorsimple", "h4_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h4_color", $h4_color);
        $h4_fontsize = new s14_localField("textsimple", "h4_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h4_fontsize", $h4_fontsize);
        $h4_lineheight = new s14_localField("textsimple", "h4_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h4_lineheight", $h4_lineheight);
        $h4_texttransform = new s14_localField("selectblanksimple", "h4_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row1->addChild("h4_texttransform", $h4_texttransform);
        $row2 = new s14_localRow(true);
        $group4->addChild("row2", $row2);
        $h4_google_fonts = new s14_localField("fontsimple", "h4_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h4_google_fonts", $h4_google_fonts);
        $h4_fontstyle = new s14_localField("selectblanksimple", "h4_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("h4_fontstyle", $h4_fontstyle);
        $h4_fontweight = new s14_localField("selectblanksimple", "h4_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("h4_fontweight", $h4_fontweight);
        $h4_letterspacing = new s14_localField("textsimple", "h4_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h4_letterspacing", $h4_letterspacing);

        $group5 = new s14_localGroup(esc_html__("H5 style", "s14_local"), esc_html__("Define styles for H5 heading", "s14_local"));
        $panel1->addChild("group5", $group5);
        $row1 = new s14_localRow();
        $group5->addChild("row1", $row1);
        $h5_color = new s14_localField("colorsimple", "h5_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h5_color", $h5_color);
        $h5_fontsize = new s14_localField("textsimple", "h5_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h5_fontsize", $h5_fontsize);
        $h5_lineheight = new s14_localField("textsimple", "h5_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h5_lineheight", $h5_lineheight);
        $h5_texttransform = new s14_localField("selectblanksimple", "h5_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"),  s14_local_get_text_transform_array());
        $row1->addChild("h5_texttransform", $h5_texttransform);
        $row2 = new s14_localRow(true);
        $group5->addChild("row2", $row2);
        $h5_google_fonts = new s14_localField("fontsimple", "h5_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h5_google_fonts", $h5_google_fonts);
        $h5_fontstyle = new s14_localField("selectblanksimple", "h5_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("h5_fontstyle", $h5_fontstyle);
        $h5_fontweight = new s14_localField("selectblanksimple", "h5_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("h5_fontweight", $h5_fontweight);
        $h5_letterspacing = new s14_localField("textsimple", "h5_letterspacing", "", esc_html__("Letter spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h5_letterspacing", $h5_letterspacing);

        $group6 = new s14_localGroup(esc_html__("H6 Style", "s14_local"), esc_html__("Define styles for H6 heading", "s14_local"));
        $panel1->addChild("group6", $group6);
        $row1 = new s14_localRow();
        $group6->addChild("row1", $row1);
        $h6_color = new s14_localField("colorsimple", "h6_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h6_color", $h6_color);
        $h6_fontsize = new s14_localField("textsimple", "h6_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h6_fontsize", $h6_fontsize);
        $h6_lineheight = new s14_localField("textsimple", "h6_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h6_lineheight", $h6_lineheight);
        $h6_texttransform = new s14_localField("selectblanksimple", "h6_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"),  s14_local_get_text_transform_array());
        $row1->addChild("h6_texttransform", $h6_texttransform);
        $row2 = new s14_localRow(true);
        $group6->addChild("row2", $row2);
        $h6_google_fonts = new s14_localField("fontsimple", "h6_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h6_google_fonts", $h6_google_fonts);
        $h6_fontstyle = new s14_localField("selectblanksimple", "h6_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("h6_fontstyle", $h6_fontstyle);
        $h6_fontweight = new s14_localField("selectblanksimple", "h6_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("h6_fontweight", $h6_fontweight);
        $h6_letterspacing = new s14_localField("textsimple", "h6_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("h6_letterspacing", $h6_letterspacing);

        $panel1_responsive_tablet = new s14_localPanel(esc_html__("Headings Responsive (Tablet Portrait View)", "s14_local"), "headings_responsive_tablet_panel");
        $fontsPage->addChild("panel1_responsive_tablet", $panel1_responsive_tablet);

        $group1 = new s14_localGroup(esc_html__("H1 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H1 heading", "s14_local"));
        $panel1_responsive_tablet->addChild("group1", $group1);
        $row1 = new s14_localRow();
        $group1->addChild("row1", $row1);
        $h1_fontsize_tablet = new s14_localField("textsimple", "h1_fontsize_tablet", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h1_fontsize_tablet", $h1_fontsize_tablet);
        $h1_lineheight_tablet = new s14_localField("textsimple", "h1_lineheight_tablet", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h1_lineheight_tablet", $h1_lineheight_tablet);
        $h1_letterspacing_tablet = new s14_localField("textsimple", "h1_letterspacing_tablet", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h1_letterspacing_tablet", $h1_letterspacing_tablet);

        $group2 = new s14_localGroup(esc_html__("H2 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H2 heading", "s14_local"));
        $panel1_responsive_tablet->addChild("group2", $group2);
        $row1 = new s14_localRow();
        $group2->addChild("row1", $row1);
        $h2_fontsize_tablet = new s14_localField("textsimple", "h2_fontsize_tablet", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h2_fontsize_tablet", $h2_fontsize_tablet);
        $h2_lineheight_tablet = new s14_localField("textsimple", "h2_lineheight_tablet", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h2_lineheight_tablet", $h2_lineheight_tablet);
        $h2_letterspacing_tablet = new s14_localField("textsimple", "h2_letterspacing_tablet", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h2_letterspacing_tablet", $h2_letterspacing_tablet);

        $group3 = new s14_localGroup(esc_html__("H3 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H3 heading", "s14_local"));
        $panel1_responsive_tablet->addChild("group3", $group3);
        $row1 = new s14_localRow();
        $group3->addChild("row1", $row1);
        $h3_fontsize_tablet = new s14_localField("textsimple", "h3_fontsize_tablet", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h3_fontsize_tablet", $h3_fontsize_tablet);
        $h3_lineheight_tablet = new s14_localField("textsimple", "h3_lineheight_tablet", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h3_lineheight_tablet", $h3_lineheight_tablet);
        $h3_letterspacing_tablet = new s14_localField("textsimple", "h3_letterspacing_tablet", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h3_letterspacing_tablet", $h3_letterspacing_tablet);

        $group4 = new s14_localGroup(esc_html__("H4 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H4 heading", "s14_local"));
        $panel1_responsive_tablet->addChild("group4", $group4);
        $row1 = new s14_localRow();
        $group4->addChild("row1", $row1);
        $h4_fontsize_tablet = new s14_localField("textsimple", "h4_fontsize_tablet", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h4_fontsize_tablet", $h4_fontsize_tablet);
        $h4_lineheight_tablet = new s14_localField("textsimple", "h4_lineheight_tablet", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h4_lineheight_tablet", $h4_lineheight_tablet);
        $h4_letterspacing_tablet = new s14_localField("textsimple", "h4_letterspacing_tablet", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h4_letterspacing_tablet", $h4_letterspacing_tablet);

        $group5 = new s14_localGroup(esc_html__("H5 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H5 heading", "s14_local"));
        $panel1_responsive_tablet->addChild("group5", $group5);
        $row1 = new s14_localRow();
        $group5->addChild("row1", $row1);
        $h5_fontsize_tablet = new s14_localField("textsimple", "h5_fontsize_tablet", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h5_fontsize_tablet", $h5_fontsize_tablet);
        $h5_lineheight_tablet = new s14_localField("textsimple", "h5_lineheight_tablet", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h5_lineheight_tablet", $h5_lineheight_tablet);
        $h5_letterspacing_tablet = new s14_localField("textsimple", "h5_letterspacing_tablet", "", esc_html__("Letter spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h5_letterspacing_tablet", $h5_letterspacing_tablet);

        $group6 = new s14_localGroup(esc_html__("H6 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H6 heading", "s14_local"));
        $panel1_responsive_tablet->addChild("group6", $group6);
        $row1 = new s14_localRow();
        $group6->addChild("row1", $row1);
        $h6_fontsize_tablet = new s14_localField("textsimple", "h6_fontsize_tablet", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h6_fontsize_tablet", $h6_fontsize_tablet);
        $h6_lineheight_tablet = new s14_localField("textsimple", "h6_lineheight_tablet", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h6_lineheight_tablet", $h6_lineheight_tablet);
        $h6_letterspacing_tablet = new s14_localField("textsimple", "h6_letterspacing_tablet", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h6_letterspacing_tablet", $h6_letterspacing_tablet);

        $panel1_responsive_mobile = new s14_localPanel(esc_html__("Headings Responsive (Mobile Devices)", "s14_local"), "headings_responsive_mobile_panel");
        $fontsPage->addChild("panel1_responsive_mobile", $panel1_responsive_mobile);

        $group1 = new s14_localGroup(esc_html__("H1 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H1 heading", "s14_local"));
        $panel1_responsive_mobile->addChild("group1", $group1);
        $row1 = new s14_localRow();
        $group1->addChild("row1", $row1);
        $h1_fontsize_mobile = new s14_localField("textsimple", "h1_fontsize_mobile", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h1_fontsize_mobile", $h1_fontsize_mobile);
        $h1_lineheight_mobile = new s14_localField("textsimple", "h1_lineheight_mobile", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h1_lineheight_mobile", $h1_lineheight_mobile);
        $h1_letterspacing_mobile = new s14_localField("textsimple", "h1_letterspacing_mobile", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h1_letterspacing_mobile", $h1_letterspacing_mobile);

        $group2 = new s14_localGroup(esc_html__("H2 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H2 heading", "s14_local"));
        $panel1_responsive_mobile->addChild("group2", $group2);
        $row1 = new s14_localRow();
        $group2->addChild("row1", $row1);
        $h2_fontsize_mobile = new s14_localField("textsimple", "h2_fontsize_mobile", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h2_fontsize_mobile", $h2_fontsize_mobile);
        $h2_lineheight_mobile = new s14_localField("textsimple", "h2_lineheight_mobile", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h2_lineheight_mobile", $h2_lineheight_mobile);
        $h2_letterspacing_mobile = new s14_localField("textsimple", "h2_letterspacing_mobile", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h2_letterspacing_mobile", $h2_letterspacing_mobile);

        $group3 = new s14_localGroup(esc_html__("H3 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H3 heading", "s14_local"));
        $panel1_responsive_mobile->addChild("group3", $group3);
        $row1 = new s14_localRow();
        $group3->addChild("row1", $row1);
        $h3_fontsize_mobile = new s14_localField("textsimple", "h3_fontsize_mobile", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h3_fontsize_mobile", $h3_fontsize_mobile);
        $h3_lineheight_mobile = new s14_localField("textsimple", "h3_lineheight_mobile", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h3_lineheight_mobile", $h3_lineheight_mobile);
        $h3_letterspacing_mobile = new s14_localField("textsimple", "h3_letterspacing_mobile", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h3_letterspacing_mobile", $h3_letterspacing_mobile);

        $group4 = new s14_localGroup(esc_html__("H4 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H4 heading", "s14_local"));
        $panel1_responsive_mobile->addChild("group4", $group4);
        $row1 = new s14_localRow();
        $group4->addChild("row1", $row1);
        $h4_fontsize_mobile = new s14_localField("textsimple", "h4_fontsize_mobile", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h4_fontsize_mobile", $h4_fontsize_mobile);
        $h4_lineheight_mobile = new s14_localField("textsimple", "h4_lineheight_mobile", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h4_lineheight_mobile", $h4_lineheight_mobile);
        $h4_letterspacing_mobile = new s14_localField("textsimple", "h4_letterspacing_mobile", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h4_letterspacing_mobile", $h4_letterspacing_mobile);

        $group5 = new s14_localGroup(esc_html__("H5 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H5 heading", "s14_local"));
        $panel1_responsive_mobile->addChild("group5", $group5);
        $row1 = new s14_localRow();
        $group5->addChild("row1", $row1);
        $h5_fontsize_mobile = new s14_localField("textsimple", "h5_fontsize_mobile", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h5_fontsize_mobile", $h5_fontsize_mobile);
        $h5_lineheight_mobile = new s14_localField("textsimple", "h5_lineheight_mobile", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h5_lineheight_mobile", $h5_lineheight_mobile);
        $h5_letterspacing_mobile = new s14_localField("textsimple", "h5_letterspacing_mobile", "", esc_html__("Letter spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h5_letterspacing_mobile", $h5_letterspacing_mobile);

        $group6 = new s14_localGroup(esc_html__("H6 Responsive Style", "s14_local"), esc_html__("Define responsive styles for H6 heading", "s14_local"));
        $panel1_responsive_mobile->addChild("group6", $group6);
        $row1 = new s14_localRow();
        $group6->addChild("row1", $row1);
        $h6_fontsize_mobile = new s14_localField("textsimple", "h6_fontsize_mobile", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h6_fontsize_mobile", $h6_fontsize_mobile);
        $h6_lineheight_mobile = new s14_localField("textsimple", "h6_lineheight_mobile", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h6_lineheight_mobile", $h6_lineheight_mobile);
        $h6_letterspacing_mobile = new s14_localField("textsimple", "h6_letterspacing_mobile", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("h6_letterspacing_mobile", $h6_letterspacing_mobile);

        // Text

        $panel2 = new s14_localPanel(esc_html__("Text", "s14_local"), "text_panel");
        $fontsPage->addChild("panel2", $panel2);

        $group1 = new s14_localGroup(esc_html__("Paragraph", "s14_local"), esc_html__("Define styles for paragraph text", "s14_local"));
        $panel2->addChild("group1", $group1);
        $row1 = new s14_localRow();
        $group1->addChild("row1", $row1);
        $text_color = new s14_localField("colorsimple", "text_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("text_color", $text_color);
        $text_fontsize = new s14_localField("textsimple", "text_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("text_fontsize", $text_fontsize);
        $text_lineheight = new s14_localField("textsimple", "text_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("text_lineheight", $text_lineheight);
        $row2 = new s14_localRow(true);
        $group1->addChild("row2", $row2);
        $text_google_fonts = new s14_localField("fontsimple", "text_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("text_google_fonts", $text_google_fonts);
        $text_fontstyle = new s14_localField("selectblanksimple", "text_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("text_fontstyle", $text_fontstyle);
        $text_fontweight = new s14_localField("selectblanksimple", "text_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("text_fontweight", $text_fontweight);
        $text_margin = new s14_localField("textsimple", "text_margin", "", esc_html__("Top/Bottom Margin (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("text_margin", $text_margin);

        $group1_tablet = new s14_localGroup(esc_html__("Paragraph Responsive (Table Portrait View)", "s14_local"), esc_html__("Define responsive styles for paragraph text for table devices - portrait view", "s14_local"));
        $panel2->addChild("group1_tablet", $group1_tablet);
        $row1 = new s14_localRow();
        $group1_tablet->addChild("row1", $row1);
        $text_fontsize_tablet = new s14_localField("textsimple", "text_fontsize_tablet", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("text_fontsize_tablet", $text_fontsize_tablet);
        $text_lineheight_tablet = new s14_localField("textsimple", "text_lineheight_tablet", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("text_lineheight_tablet", $text_lineheight_tablet);
        $text_letterspacing_tablet = new s14_localField("textsimple", "text_letterspacing_tablet", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("text_letterspacing_tablet", $text_letterspacing_tablet);

        $group2_mobile = new s14_localGroup(esc_html__("Paragraph Responsive (Mobile Devices)", "s14_local"), esc_html__("Define responsive styles for paragraph text for mobile devices", "s14_local"));
        $panel2->addChild("group2_mobile", $group2_mobile);
        $row1 = new s14_localRow();
        $group2_mobile->addChild("row1", $row1);
        $text_fontsize_mobile = new s14_localField("textsimple", "text_fontsize_mobile", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("text_fontsize_mobile", $text_fontsize_mobile);
        $text_lineheight_mobile = new s14_localField("textsimple", "text_lineheight_mobile", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("text_lineheight_mobile", $text_lineheight_mobile);
        $text_letterspacing_mobile = new s14_localField("textsimple", "text_letterspacing_mobile", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("text_letterspacing_mobile", $text_letterspacing_mobile);

        $group2 = new s14_localGroup(esc_html__("Links", "s14_local"), esc_html__("Define styles for link text", "s14_local"));
        $panel2->addChild("group2", $group2);
        $row1 = new s14_localRow();
        $group2->addChild("row1", $row1);
        $link_color = new s14_localField("colorsimple", "link_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("link_color", $link_color);
        $link_hovercolor = new s14_localField("colorsimple", "link_hovercolor", "", esc_html__("Hover Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("link_hovercolor", $link_hovercolor);
        $row2 = new s14_localRow(true);
        $group2->addChild("row2", $row2);
        $link_fontstyle = new s14_localField("selectblanksimple", "link_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("link_fontstyle", $link_fontstyle);
        $link_fontweight = new s14_localField("selectblanksimple", "link_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("link_fontweight", $link_fontweight);
        $link_fontdecoration = new s14_localField("selectblanksimple", "link_fontdecoration", "", esc_html__("Font Decoration", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_decorations());
        $row2->addChild("link_fontdecoration", $link_fontdecoration);

        // Header & Menu

        $panel7 = new s14_localPanel(esc_html__("Header & Menu", "s14_local"), "header_and_menu_panel");
        $fontsPage->addChild("panel7", $panel7);

        $group1 = new s14_localGroup(esc_html__("1st Level Menu", "s14_local"), esc_html__("Define styles for 1st level in Top Navigation Menu", "s14_local"));
        $panel7->addChild("group1", $group1);
        $row1 = new s14_localRow();
        $group1->addChild("row1", $row1);
        $menu_color = new s14_localField("colorsimple", "menu_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("menu_color", $menu_color);
        $menu_hovercolor = new s14_localField("colorsimple", "menu_hovercolor", "", esc_html__("Hover Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("menu_hovercolor", $menu_hovercolor);
        $menu_activecolor = new s14_localField("colorsimple", "menu_activecolor", "", esc_html__("Active Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("menu_activecolor", $menu_activecolor);
        $menu_hover_background_color = new s14_localField("colorsimple", "menu_hover_background_color", "", esc_html__("Hover Text Background Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("menu_hover_background_color", $menu_hover_background_color);
        $row2 = new s14_localRow(true);
        $group1->addChild("row2", $row2);
        $menu_google_fonts = new s14_localField("fontsimple", "menu_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("menu_google_fonts", $menu_google_fonts);
        $menu_fontsize = new s14_localField("textsimple", "menu_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("menu_fontsize", $menu_fontsize);
        $menu_lineheight = new s14_localField("textsimple", "menu_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("menu_lineheight", $menu_lineheight);
        $menu_hover_background_color_transparency = new s14_localField("textsimple", "menu_hover_background_color_transparency", "", esc_html__("Hover Text Background Color Transparency", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("menu_hover_background_color_transparency", $menu_hover_background_color_transparency);
        $row3 = new s14_localRow(true);
        $group1->addChild("row3", $row3);
        $menu_fontstyle = new s14_localField("selectblanksimple", "menu_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row3->addChild("menu_fontstyle", $menu_fontstyle);
        $menu_fontweight = new s14_localField("selectblanksimple", "menu_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row3->addChild("menu_fontweight", $menu_fontweight);
        $menu_letterspacing = new s14_localField("textsimple", "menu_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row3->addChild("menu_letterspacing", $menu_letterspacing);
        $menu_text_transform = new s14_localField("selectblanksimple", "menu_text_transform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row3->addChild("menu_text_transform", $menu_text_transform);

        if (isset($s14_local_options['vertical_area']) && $s14_local_options['vertical_area'] == 'no') {
            $row4 = new s14_localRow(true);
            $group1->addChild("row4", $row4);
            $menu_separator_between_items = new s14_localField("yesnosimple", "menu_separator_between_items", "no", esc_html__("Show Separator Between Items", "s14_local"), esc_html__("This is some description", "s14_local"));
            $row4->addChild("menu_separator_between_items", $menu_separator_between_items);
            $menu_separator_color = new s14_localField("colorsimple", "menu_separator_color", "", esc_html__("Separator Color", "s14_local"), esc_html__("This is some description", "s14_local"));
            $row4->addChild("menu_separator_color", $menu_separator_color);
            $menu_padding_left_right = new s14_localField("textsimple", "menu_padding_left_right", "", esc_html__("Padding Left/Right (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
            $row4->addChild("menu_padding_left_right", $menu_padding_left_right);

            $row5 = new s14_localRow(true);
            $group1->addChild("row5", $row5);
            $menu_item_border = new s14_localField("yesnosimple", "menu_item_border", "no", esc_html__("Show Border on Active/Hover Items", "s14_local"), "");
            $row5->addChild("menu_item_border", $menu_item_border);
        }

        $row6 = new s14_localRow(true);
        $group1->addChild("row6", $row6);
        $menu_underline_dash = new s14_localField("yesnosimple", "menu_underline_dash", "no", esc_html__("Show Underline Dash on Active/Hover Items", "s14_local"), "", array(),
            array("dependence" => true,
                "dependence_hide_on_yes" => "",
                "dependence_show_on_yes" => "#qodef_menu_underline_dash_container"));
        $row6->addChild("menu_underline_dash", $menu_underline_dash);

        $menu_underline_dash_container = new s14_localContainerNoStyle("menu_underline_dash_container", "menu_underline_dash", "no");
        $row6->addChild("menu_underline_dash_container", $menu_underline_dash_container);

        $menu_underline_dash_color = new s14_localField("colorsimple", "menu_underline_dash_color", "", esc_html__("Dash Color (default is 'inherit' from text)", "s14_local"), "");
        $menu_underline_dash_container->addChild("menu_underline_dash_color", $menu_underline_dash_color);

        $menu_underline_dash_width = new s14_localField("textsimple", "menu_underline_dash_width", "", esc_html__("Dash Width (px)", "s14_local"), "");
        $menu_underline_dash_container->addChild("menu_underline_dash_width", $menu_underline_dash_width);

        $menu_underline_dash_height = new s14_localField("textsimple", "menu_underline_dash_height", "", esc_html__("Dash Height (px)", "s14_local"), "");
        $menu_underline_dash_container->addChild("menu_underline_dash_height", $menu_underline_dash_height);

        $menu_underline_dash_alignment = new s14_localField("selectsimple", "menu_underline_dash_alignment", "center", esc_html__("Dash Alignment", "s14_local"), "", array(
                "center" => esc_html__("Center", "s14_local"),
                "left" => esc_html__("Left", "s14_local"),
                "right" => esc_html__("Right", "s14_local"))
        );
        $menu_underline_dash_container->addChild("menu_underline_dash_alignment", $menu_underline_dash_alignment);

        $group2 = new s14_localGroup(esc_html__("2nd Level Menu", "s14_local"), esc_html__("Define styles for 2nd level in Top Navigation Menu", "s14_local"));
        $panel7->addChild("group2", $group2);
        $row1 = new s14_localRow();
        $group2->addChild("row1", $row1);
        $dropdown_color = new s14_localField("colorsimple", "dropdown_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("dropdown_color", $dropdown_color);
        $dropdown_hovercolor = new s14_localField("colorsimple", "dropdown_hovercolor", "", esc_html__("Hover/Active Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("dropdown_hovercolor", $dropdown_hovercolor);
        $row2 = new s14_localRow(true);
        $group2->addChild("row2", $row2);
        $dropdown_google_fonts = new s14_localField("fontsimple", "dropdown_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_google_fonts", $dropdown_google_fonts);
        $dropdown_fontsize = new s14_localField("textsimple", "dropdown_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_fontsize", $dropdown_fontsize);
        $dropdown_lineheight = new s14_localField("textsimple", "dropdown_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_lineheight", $dropdown_lineheight);
        $dropdown_padding_top_bottom = new s14_localField("textsimple", "dropdown_padding_top_bottom", "", esc_html__("Padding Top/Bottom", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_padding_top_bottom", $dropdown_padding_top_bottom);
        $row3 = new s14_localRow(true);
        $group2->addChild("row3", $row3);
        $dropdown_fontstyle = new s14_localField("selectblanksimple", "dropdown_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row3->addChild("dropdown_fontstyle", $dropdown_fontstyle);
        $dropdown_fontweight = new s14_localField("selectblanksimple", "dropdown_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row3->addChild("dropdown_fontweight", $dropdown_fontweight);
        $dropdown_letterspacing = new s14_localField("textsimple", "dropdown_letterspacing", "", esc_html__("Letter spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row3->addChild("dropdown_letterspacing", $dropdown_letterspacing);
        $dropdown_texttransform = new s14_localField("selectblanksimple", "dropdown_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row3->addChild("dropdown_texttransform", $dropdown_texttransform);

        $group3 = new s14_localGroup(esc_html__("2nd Level Wide Menu", "s14_local"), esc_html__("Define styles for 2nd level in Wide Menu", "s14_local"));
        $panel7->addChild("group3", $group3);
        $row1 = new s14_localRow();
        $group3->addChild("row1", $row1);
        $dropdown_wide_color = new s14_localField("colorsimple", "dropdown_wide_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("dropdown_wide_color", $dropdown_wide_color);
        $dropdown_wide_hovercolor = new s14_localField("colorsimple", "dropdown_wide_hovercolor", "", esc_html__("Hover Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("dropdown_wide_hovercolor", $dropdown_wide_hovercolor);
        $row2 = new s14_localRow(true);
        $group3->addChild("row2", $row2);
        $dropdown_wide_google_fonts = new s14_localField("fontsimple", "dropdown_wide_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_wide_google_fonts", $dropdown_wide_google_fonts);
        $dropdown_wide_fontsize = new s14_localField("textsimple", "dropdown_wide_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_wide_fontsize", $dropdown_wide_fontsize);
        $dropdown_wide_lineheight = new s14_localField("textsimple", "dropdown_wide_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_wide_lineheight", $dropdown_wide_lineheight);
        $row3 = new s14_localRow(true);
        $group3->addChild("row3", $row3);
        $dropdown_wide_fontstyle = new s14_localField("selectblanksimple", "dropdown_wide_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row3->addChild("dropdown_wide_fontstyle", $dropdown_wide_fontstyle);
        $dropdown_wide_fontweight = new s14_localField("selectblanksimple", "dropdown_wide_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row3->addChild("dropdown_wide_fontweight", $dropdown_wide_fontweight);
        $dropdown_wide_letterspacing = new s14_localField("textsimple", "dropdown_wide_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row3->addChild("dropdown_wide_letterspacing", $dropdown_wide_letterspacing);
        $dropdown_wide_texttransform = new s14_localField("selectblanksimple", "dropdown_wide_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row3->addChild("dropdown_wide_texttransform", $dropdown_wide_texttransform);

        $group4 = new s14_localGroup(esc_html__("3rd Level Menu", "s14_local"), esc_html__("Define styles for 3rd level in Top Navigation Menu", "s14_local"));
        $panel7->addChild("group4", $group4);
        $row1 = new s14_localRow();
        $group4->addChild("row1", $row1);
        $dropdown_color_thirdlvl = new s14_localField("colorsimple", "dropdown_color_thirdlvl", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("dropdown_color_thirdlvl", $dropdown_color_thirdlvl);
        $dropdown_hovercolor_thirdlvl = new s14_localField("colorsimple", "dropdown_hovercolor_thirdlvl", "", esc_html__("Hover/Active Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("dropdown_hovercolor_thirdlvl", $dropdown_hovercolor_thirdlvl);
        $row2 = new s14_localRow(true);
        $group4->addChild("row2", $row2);
        $dropdown_google_fonts_thirdlvl = new s14_localField("fontsimple", "dropdown_google_fonts_thirdlvl", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_google_fonts_thirdlvl", $dropdown_google_fonts_thirdlvl);
        $dropdown_fontsize_thirdlvl = new s14_localField("textsimple", "dropdown_fontsize_thirdlvl", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_fontsize_thirdlvl", $dropdown_fontsize_thirdlvl);
        $dropdown_lineheight_thirdlvl = new s14_localField("textsimple", "dropdown_lineheight_thirdlvl", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("dropdown_lineheight_thirdlvl", $dropdown_lineheight_thirdlvl);
        $row3 = new s14_localRow(true);
        $group4->addChild("row3", $row3);
        $dropdown_fontstyle_thirdlvl = new s14_localField("selectblanksimple", "dropdown_fontstyle_thirdlvl", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row3->addChild("dropdown_fontstyle_thirdlvl", $dropdown_fontstyle_thirdlvl);
        $dropdown_fontweight_thirdlvl = new s14_localField("selectblanksimple", "dropdown_fontweight_thirdlvl", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row3->addChild("dropdown_fontweight_thirdlvl", $dropdown_fontweight_thirdlvl);
        $dropdown_letterspacing_thirdlvl = new s14_localField("textsimple", "dropdown_letterspacing_thirdlvl", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row3->addChild("dropdown_letterspacing", $dropdown_letterspacing_thirdlvl);
        $dropdown_texttransform_thirdlvl = new s14_localField("selectblanksimple", "dropdown_texttransform_thirdlvl", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row3->addChild("dropdown_texttransform_thirdlvl", $dropdown_texttransform_thirdlvl);

        $group5 = new s14_localGroup(esc_html__("Fixed Menu", "s14_local"), esc_html__("Define styles for fixed menu", "s14_local"));
        $panel7->addChild("group5", $group5);
        $row1 = new s14_localRow();
        $group5->addChild("row1", $row1);
        $fixed_color = new s14_localField("colorsimple", "fixed_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("fixed_color", $fixed_color);
        $fixed_hovercolor = new s14_localField("colorsimple", "fixed_hovercolor", "", esc_html__("Hover/Active Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("fixed_hovercolor", $fixed_hovercolor);
        $row2 = new s14_localRow(true);
        $group5->addChild("row2", $row2);
        $fixed_google_fonts = new s14_localField("fontsimple", "fixed_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("fixed_google_fonts", $fixed_google_fonts);
        $fixed_fontsize = new s14_localField("textsimple", "fixed_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("fixed_fontsize", $fixed_fontsize);
        $fixed_lineheight = new s14_localField("textsimple", "fixed_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("fixed_lineheight", $fixed_lineheight);
        $row3 = new s14_localRow(true);
        $group5->addChild("row3", $row3);
        $fixed_fontstyle = new s14_localField("selectblanksimple", "fixed_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row3->addChild("fixed_fontstyle", $fixed_fontstyle);
        $fixed_fontweight = new s14_localField("selectblanksimple", "fixed_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row3->addChild("fixed_fontweight", $fixed_fontweight);
        $fixed_letterspacing = new s14_localField("textsimple", "fixed_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row3->addChild("fixed_letterspacing", $fixed_letterspacing);
        $fixed_texttransform = new s14_localField("selectblanksimple", "fixed_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row3->addChild("fixed_texttransform", $fixed_texttransform);

        $group6 = new s14_localGroup(esc_html__("Sticky Menu", "s14_local"), esc_html__("Define styles for sticky menu", "s14_local"));
        $panel7->addChild("group6", $group6);
        $row1 = new s14_localRow();
        $group6->addChild("row1", $row1);
        $sticky_color = new s14_localField("colorsimple", "sticky_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("sticky_color", $sticky_color);
        $sticky_hovercolor = new s14_localField("colorsimple", "sticky_hovercolor", "", esc_html__("Hover/Active color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("sticky_hovercolor", $sticky_hovercolor);
        $row2 = new s14_localRow(true);
        $group6->addChild("row2", $row2);
        $sticky_google_fonts = new s14_localField("fontsimple", "sticky_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("sticky_google_fonts", $sticky_google_fonts);
        $sticky_fontsize = new s14_localField("textsimple", "sticky_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("sticky_fontsize", $sticky_fontsize);
        $sticky_lineheight = new s14_localField("textsimple", "sticky_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("sticky_lineheight", $sticky_lineheight);
        $row3 = new s14_localRow(true);
        $group6->addChild("row3", $row3);
        $sticky_fontstyle = new s14_localField("selectblanksimple", "sticky_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row3->addChild("sticky_fontstyle", $sticky_fontstyle);
        $sticky_fontweight = new s14_localField("selectblanksimple", "sticky_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row3->addChild("sticky_fontweight", $sticky_fontweight);
        $sticky_letterspacing = new s14_localField("textsimple", "sticky_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row3->addChild("sticky_letterspacing", $sticky_letterspacing);
        $sticky_texttransform = new s14_localField("selectblanksimple", "sticky_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row3->addChild("sticky_texttransform", $sticky_texttransform);

        $group7 = new s14_localGroup(esc_html__("Mobile Menu", "s14_local"), esc_html__("Define styles for Mobile Menu (as seen on small screens)", "s14_local"));
        $panel7->addChild("group7", $group7);
        $row1 = new s14_localRow();
        $group7->addChild("row1", $row1);
        $mobile_color = new s14_localField("colorsimple", "mobile_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("mobile_color", $mobile_color);
        $mobile_hovercolor = new s14_localField("colorsimple", "mobile_hovercolor", "", esc_html__("Hover/Active Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("mobile_hovercolor", $mobile_hovercolor);

        $row2 = new s14_localRow(true);
        $group7->addChild("row2", $row2);
        $mobile_google_fonts = new s14_localField("fontsimple", "mobile_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("mobile_google_fonts", $mobile_google_fonts);
        $mobile_fontsize = new s14_localField("textsimple", "mobile_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("mobile_fontsize", $mobile_fontsize);
        $mobile_lineheight = new s14_localField("textsimple", "mobile_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("mobile_lineheight", $mobile_lineheight);
        $row3 = new s14_localRow(true);
        $group7->addChild("row3", $row3);
        $mobile_fontstyle = new s14_localField("selectblanksimple", "mobile_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row3->addChild("mobile_fontstyle", $mobile_fontstyle);
        $mobile_fontweight = new s14_localField("selectblanksimple", "mobile_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row3->addChild("mobile_fontweight", $mobile_fontweight);
        $mobile_letter_spacing = new s14_localField("textsimple", "mobile_letter_spacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row3->addChild("mobile_letter_spacing", $mobile_letter_spacing);
        $mobile_texttransform = new s14_localField("selectblanksimple", "mobile_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row3->addChild("mobile_texttransform", $mobile_texttransform);

        $group8 = new s14_localGroup(esc_html__("Header Top", "s14_local"), esc_html__("Define styles for Header Top area", "s14_local"));
        $panel7->addChild("group8", $group8);
        $row1 = new s14_localRow();
        $group8->addChild("row1", $row1);
        $top_header_text_color = new s14_localField("colorsimple", "top_header_text_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("top_header_text_color", $top_header_text_color);
        $top_header_text_hover_color = new s14_localField("colorsimple", "top_header_text_hover_color", "", esc_html__("Hover Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("top_header_text_hover_color", $top_header_text_hover_color);
        $row2 = new s14_localRow(true);
        $group8->addChild("row2", $row2);
        $top_header_text_font_family = new s14_localField("fontsimple", "top_header_text_font_family", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("top_header_text_font_family", $top_header_text_font_family);
        $top_header_text_font_size = new s14_localField("textsimple", "top_header_text_font_size", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("top_header_text_font_size", $top_header_text_font_size);
        $top_header_text_line_height = new s14_localField("textsimple", "top_header_text_line_height", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("top_header_text_line_height", $top_header_text_line_height);
        $row3 = new s14_localRow(true);
        $group8->addChild("row3", $row3);
        $group8->addChild("row3", $row3);
        $top_header_text_font_style = new s14_localField("selectblanksimple", "top_header_text_font_style", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row3->addChild("top_header_text_font_style", $top_header_text_font_style);
        $top_header_text_font_weight = new s14_localField("selectblanksimple", "top_header_text_font_weight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row3->addChild("top_header_text_font_weight", $top_header_text_font_weight);
        $top_header_text_letter_spacing = new s14_localField("textsimple", "top_header_text_letter_spacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row3->addChild("top_header_text_letter_spacing", $top_header_text_letter_spacing);
        $top_header_text_texttransform = new s14_localField("selectblanksimple", "top_header_text_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row3->addChild("top_header_text_texttransform", $top_header_text_texttransform);

        // Page title

        $panel3 = new s14_localPanel(esc_html__("Page Title", "s14_local"), "page_title_panel");
        $fontsPage->addChild("panel3", $panel3);

        $group1 = new s14_localGroup(esc_html__("Small Type", "s14_local"), esc_html__('Define styles for default "Small" Title', "s14_local"));
        $panel3->addChild("group1", $group1);
        $row1 = new s14_localRow();
        $group1->addChild("row1", $row1);
        $page_title_color = new s14_localField("colorsimple", "page_title_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_title_color", $page_title_color);
        $page_title_fontsize = new s14_localField("textsimple", "page_title_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_title_fontsize", $page_title_fontsize);
        $page_title_lineheight = new s14_localField("textsimple", "page_title_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_title_lineheight", $page_title_lineheight);
		$page_title_texttransform = new s14_localField("selectblanksimple", "page_title_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
		$row1->addChild("page_title_texttransform", $page_title_texttransform);
        $row2 = new s14_localRow(true);
        $group1->addChild("row2", $row2);
        $page_title_google_fonts = new s14_localField("fontsimple", "page_title_google_fonts", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("page_title_google_fonts", $page_title_google_fonts);
        $page_title_fontstyle = new s14_localField("selectblanksimple", "page_title_fontstyle", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("page_title_fontstyle", $page_title_fontstyle);
        $page_title_fontweight = new s14_localField("selectblanksimple", "page_title_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("page_title_fontweight", $page_title_fontweight);
        $page_title_letterspacing = new s14_localField("textsimple", "page_title_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("page_title_letterspacing", $page_title_letterspacing);



        $group2 = new s14_localGroup(esc_html__("Medium Type", "s14_local"), esc_html__('Define styles for default "Medium" Title', "s14_local"));
        $panel3->addChild("group2", $group2);
        $row1 = new s14_localRow();
        $group2->addChild("row1", $row1);
        $page_title_medium_fontsize = new s14_localField("textsimple", "page_title_medium_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_title_medium_fontsize", $page_title_medium_fontsize);
        $page_title_medium_lineheight = new s14_localField("textsimple", "page_title_medium_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_title_medium_lineheight", $page_title_medium_lineheight);
        $page_title_medium_fontweight = new s14_localField("selectblanksimple", "page_title_medium_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row1->addChild("page_title_medium_fontweight", $page_title_medium_fontweight);
        $page_title_medium_letterspacing = new s14_localField("textsimple", "page_title_medium_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_title_medium_letterspacing", $page_title_medium_letterspacing);
		$row2 = new s14_localRow();
		$group2->addChild("row2", $row2);
		$page_title_medium_texttransform = new s14_localField("selectblanksimple", "page_title_medium_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
		$row2->addChild("page_title_medium_texttransform", $page_title_medium_texttransform);


        $group3 = new s14_localGroup(esc_html__("Large Type", "s14_local"), esc_html__('Define styles for default "Large" Title', "s14_local"));
        $panel3->addChild("group3", $group3);
        $row1 = new s14_localRow();
        $group3->addChild("row1", $row1);
        $page_title_large_fontsize = new s14_localField("textsimple", "page_title_large_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_title_large_fontsize", $page_title_large_fontsize);
        $page_title_large_lineheight = new s14_localField("textsimple", "page_title_large_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_title_large_lineheight", $page_title_large_lineheight);
        $page_title_large_fontweight = new s14_localField("selectblanksimple", "page_title_large_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row1->addChild("page_title_large_fontweight", $page_title_large_fontweight);
        $page_title_large_letterspacing = new s14_localField("textsimple", "page_title_large_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_title_large_letterspacing", $page_title_large_letterspacing);
		$row2 = new s14_localRow();
		$group3->addChild("row2", $row2);
		$page_title_large_texttransform = new s14_localField("selectblanksimple", "page_title_large_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
		$row2->addChild("page_title_large_texttransform", $page_title_large_texttransform);

        // Page Title Responsive

        $panel_title_responsive = new s14_localPanel(esc_html__("Page Title Responsive", "s14_local"), "panel_title_responsive");
        $fontsPage->addChild("panel_title_responsive", $panel_title_responsive);

        $small_group = s14_local_add_admin_group(array(
            'name'          => 'small_group',
            'title'         => esc_html__('Small Title', 's14_local'),
            'description'   => esc_html__('Setup responsive font options for small title', 's14_local'),
            'parent'        => $panel_title_responsive
        ));

        $tablet_row = s14_local_add_admin_row(array(
            'name' => 'tablet_row',
            'next' => true,
            'parent' => $small_group
        ));

        s14_local_add_admin_field(array(
            'parent'        => $tablet_row,
            'type'          => 'textsimple',
            'name'          => 'small_tablet_title_fs',
            'default_value' => '',
            'label'         => esc_html__('Font Size for Tablet portrait', 's14_local'),
            'description'   => ''
        ));

        s14_local_add_admin_field(array(
            'parent'        => $tablet_row,
            'type'          => 'textsimple',
            'name'          => 'small_tablet_title_lh',
            'default_value' => '',
            'label'         => esc_html__('Line Height for Tablet portrait', 's14_local'),
            'description'   => ''
        ));

        $mobile_row = s14_local_add_admin_row(array(
            'name' => 'mobile_row',
            'parent' => $small_group
        ));

        s14_local_add_admin_field(array(
            'parent'        => $mobile_row,
            'type'          => 'textsimple',
            'name'          => 'small_mobile_title_fs',
            'default_value' => '',
            'label'         => esc_html__('Font Size for Mobile', 's14_local'),
            'description'   => ''
        ));

        s14_local_add_admin_field(array(
            'parent'        => $mobile_row,
            'type'          => 'textsimple',
            'name'          => 'small_mobile_title_lh',
            'default_value' => '',
            'label'         => esc_html__('Line Height for Mobile', 's14_local'),
            'description'   => ''
        ));

        $medium_group = s14_local_add_admin_group(array(
            'name'          => 'medium_group',
            'title'         => esc_html__('Medium Title', 's14_local'),
            'description'   => esc_html__('Setup responsive font options for medium title', 's14_local'),
            'parent'        => $panel_title_responsive
        ));

        $tablet_row = s14_local_add_admin_row(array(
            'name' => 'tablet_row',
            'next' => true,
            'parent' => $medium_group
        ));

        s14_local_add_admin_field(array(
            'parent'        => $tablet_row,
            'type'          => 'textsimple',
            'name'          => 'medium_tablet_title_fs',
            'default_value' => '',
            'label'         => esc_html__('Font Size for Tablet portrait', 's14_local'),
            'description'   => ''
        ));

        s14_local_add_admin_field(array(
            'parent'        => $tablet_row,
            'type'          => 'textsimple',
            'name'          => 'medium_tablet_title_lh',
            'default_value' => '',
            'label'         => esc_html__('Line Height for Tablet portrait', 's14_local'),
            'description'   => ''
        ));

        $mobile_row = s14_local_add_admin_row(array(
            'name' => 'mobile_row',
            'parent' => $medium_group
        ));

        s14_local_add_admin_field(array(
            'parent'        => $mobile_row,
            'type'          => 'textsimple',
            'name'          => 'medium_mobile_title_fs',
            'default_value' => '',
            'label'         => esc_html__('Font Size for Mobile', 's14_local'),
            'description'   => ''
        ));

        s14_local_add_admin_field(array(
            'parent'        => $mobile_row,
            'type'          => 'textsimple',
            'name'          => 'medium_mobile_title_lh',
            'default_value' => '',
            'label'         => esc_html__('Line Height for Mobile', 's14_local'),
            'description'   => ''
        ));



        $large_group = s14_local_add_admin_group(array(
            'name'          => 'large_group',
            'title'         => esc_html__('Large Title', 's14_local'),
            'description'   => esc_html__('Setup responsive font options for large title', 's14_local'),
            'parent'        => $panel_title_responsive
        ));

         $tablet_row = s14_local_add_admin_row(array(
            'name' => 'tablet_row',
            'next' => true,
            'parent' => $large_group
        ));

        s14_local_add_admin_field(array(
            'parent'        => $tablet_row,
            'type'          => 'textsimple',
            'name'          => 'large_tablet_title_fs',
            'default_value' => '',
            'label'         => esc_html__('Font Size for Tablet portrait', 's14_local'),
            'description'   => ''
        ));

        s14_local_add_admin_field(array(
            'parent'        => $tablet_row,
            'type'          => 'textsimple',
            'name'          => 'large_tablet_title_lh',
            'default_value' => '',
            'label'         => esc_html__('Line Height for Tablet portrait', 's14_local'),
            'description'   => ''
        ));

        $mobile_row = s14_local_add_admin_row(array(
            'name' => 'mobile_row',
            'parent' => $large_group
        ));

        s14_local_add_admin_field(array(
            'parent'        => $mobile_row,
            'type'          => 'textsimple',
            'name'          => 'large_mobile_title_fs',
            'default_value' => '',
            'label'         => esc_html__('Font Size for Mobile', 's14_local'),
            'description'   => ''
        ));

        s14_local_add_admin_field(array(
            'parent'        => $mobile_row,
            'type'          => 'textsimple',
            'name'          => 'large_mobile_title_lh',
            'default_value' => '',
            'label'         => esc_html__('Line Height for Mobile', 's14_local'),
            'description'   => ''
        ));

        // Page Subtitle

        $panel4 = new s14_localPanel(esc_html__("Page Subtitle", "s14_local"), "page_subtitle_panel");
        $fontsPage->addChild("panel4", $panel4);

        $group1 = new s14_localGroup(esc_html__("Subtitle", "s14_local"), esc_html__("Define styles for page Subtitle", "s14_local"));
        $panel4->addChild("group1", $group1);
        $row1 = new s14_localRow();
        $group1->addChild("row1", $row1);
        $page_subtitle_color = new s14_localField("colorsimple", "page_subtitle_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_subtitle_color", $page_subtitle_color);
        $page_subtitle_fontsize = new s14_localField("textsimple", "page_subtitle_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_subtitle_fontsize", $page_subtitle_fontsize);
        $page_subtitle_lineheight = new s14_localField("textsimple", "page_subtitle_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_subtitle_lineheight", $page_subtitle_lineheight);

        s14_local_add_admin_field(array(
            'parent'        => $row1,
            'type'          => 'textsimple',
            'name'          => 'page_subtitle_letter_spacing',
            'default_value' => '',
            'label'         => esc_html__('Letter Spacing', 's14_local')
        ));

        $row2 = new s14_localRow(true);
        $group1->addChild("row2", $row2);
        $page_subtitle_font_family = new s14_localField("fontsimple", "page_subtitle_font_family", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("page_subtitle_font_family", $page_subtitle_font_family);
        $page_subtitle_font_style = new s14_localField("selectblanksimple", "page_subtitle_font_style", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("page_subtitle_font_style", $page_subtitle_font_style);
        $page_subtitle_fontweight = new s14_localField("selectblanksimple", "page_subtitle_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("page_subtitle_fontweight", $page_subtitle_fontweight);

        s14_local_add_admin_field(array(
            'parent'        => $row2,
            'type'          => 'selectblanksimple',
            'name'          => 'page_subtitle_text_transform',
            'options'       => s14_local_get_text_transform_array(),
            'default_value' => '',
            'label'         => esc_html__('Text Transform', 's14_local')
        ));

        $group2 = new s14_localGroup(esc_html__("Large Type", "s14_local"), 'Define styles for default "Large" Subtitle');
        $panel4->addChild("group2", $group2);
        $row1 = new s14_localRow();
        $group2->addChild("row1", $row1);
        $page_subtitle_large_fontsize = new s14_localField("textsimple", "page_subtitle_large_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_subtitle_large_fontsize", $page_subtitle_large_fontsize);
        $page_subtitle_large_lineheight = new s14_localField("textsimple", "page_subtitle_large_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("page_subtitle_large_lineheight", $page_subtitle_large_lineheight);
        $page_subtitle_large_fontweight = new s14_localField("selectblanksimple", "page_subtitle_large_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row1->addChild("page_subtitle_large_fontweight", $page_subtitle_large_fontweight);


		// Page Text Above Title

		$panel_text_above_title = new s14_localPanel(esc_html__("Page Text Above Title", "s14_local"), "page_text_above_title_panel");
		$fontsPage->addChild("panel_text_above_title", $panel_text_above_title);

		$group1 = new s14_localGroup(esc_html__("Text Above Title", "s14_local"), esc_html__("Define styles for page Text Above Title", "s14_local"));
		$panel_text_above_title->addChild("group1", $group1);
		$row1 = new s14_localRow();
		$group1->addChild("row1", $row1);
		$page_text_above_title_color = new s14_localField("colorsimple", "page_text_above_title_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
		$row1->addChild("page_text_above_title_color", $page_text_above_title_color);
		$page_text_above_title_fontsize = new s14_localField("textsimple", "page_text_above_title_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
		$row1->addChild("page_text_above_title_fontsize", $page_text_above_title_fontsize);
		$page_text_above_title_lineheight = new s14_localField("textsimple", "page_text_above_title_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
		$row1->addChild("page_text_above_title_lineheight", $page_text_above_title_lineheight);
		$page_text_above_title_letterspacing = new s14_localField("textsimple", "page_text_above_title_letterspacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
		$row1->addChild("page_text_above_title_letterspacing", $page_text_above_title_letterspacing);
		$row2 = new s14_localRow(true);
		$group1->addChild("row2", $row2);
		$page_text_above_title_font_family = new s14_localField("fontsimple", "page_text_above_title_font_family", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
		$row2->addChild("page_text_above_title_font_family", $page_text_above_title_font_family);
		$page_text_above_title_font_style = new s14_localField("selectblanksimple", "page_text_above_title_font_style", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
		$row2->addChild("page_text_above_title_font_style", $page_text_above_title_font_style);
		$page_text_above_title_fontweight = new s14_localField("selectblanksimple", "page_text_above_title_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
		$row2->addChild("page_text_above_title_fontweight", $page_text_above_title_fontweight);
		$page_text_above_title_texttransform = new s14_localField("selectblanksimple", "page_text_above_title_texttransform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
		$row2->addChild("page_text_above_title_texttransform", $page_text_above_title_texttransform);

		$group2 = new s14_localGroup(esc_html__("Large Type", "s14_local"), esc_html__('Define styles for default "Large" Text Above Title', "s14_local"));
		$panel_text_above_title->addChild("group2", $group2);
		$row1 = new s14_localRow();
		$group2->addChild("row1", $row1);
		$page_text_above_title_large_fontsize = new s14_localField("textsimple", "page_text_above_title_large_fontsize", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
		$row1->addChild("page_text_above_title_large_fontsize", $page_text_above_title_large_fontsize);
		$page_text_above_title_large_lineheight = new s14_localField("textsimple", "page_text_above_title_large_lineheight", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
		$row1->addChild("page_text_above_title_large_lineheight", $page_text_above_title_large_lineheight);
		$page_text_above_title_large_fontweight = new s14_localField("selectblanksimple", "page_text_above_title_large_fontweight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
		$row1->addChild("page_text_above_title_large_fontweight", $page_text_above_title_large_fontweight);

        // Quote and Link blog format and Blockquote shortcode

        $panel5 = new s14_localPanel(esc_html__("Footer", "s14_local"), "footer_panel");
        $fontsPage->addChild("panel5", $panel5);

        $group1 = new s14_localGroup(esc_html__("Footer top title styles", "s14_local"), esc_html__('Define styles for footer top title', "s14_local"));
        $panel5->addChild("group1", $group1);
        $row1 = new s14_localRow();
        $group1->addChild("row1", $row1);
        $footer_title_color = new s14_localField("colorsimple", "footer_title_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_title_color", $footer_title_color);
        $footer_title_font_size = new s14_localField("textsimple", "footer_title_font_size", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_title_font_size", $footer_title_font_size);
        $footer_title_letter_spacing = new s14_localField("textsimple", "footer_title_letter_spacing", "", esc_html__("Letter spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_title_letter_spacing", $footer_title_letter_spacing);
        $footer_title_line_height = new s14_localField("textsimple", "footer_title_line_height", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_title_line_height", $footer_title_line_height);
        $row2 = new s14_localRow(true);
        $group1->addChild("row2", $row2);
        $footer_title_font_family = new s14_localField("fontsimple", "footer_title_font_family", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("footer_title_font_family", $footer_title_font_family);
        $footer_title_font_style = new s14_localField("selectblanksimple", "footer_title_font_style", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("footer_title_font_style", $footer_title_font_style);
        $footer_title_font_weight = new s14_localField("selectblanksimple", "footer_title_font_weight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("footer_title_font_weight", $footer_title_font_weight);
        $footer_title_text_transform = new s14_localField("selectblanksimple", "footer_title_text_transform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row2->addChild("footer_title_text_transform", $footer_title_text_transform);

        $group2 = new s14_localGroup(esc_html__("Footer top text styles", "s14_local"), esc_html__('Define styles for footer top text', "s14_local"));
        $panel5->addChild("group2", $group2);
        $row1 = new s14_localRow();
        $group2->addChild("row1", $row1);
        $footer_text_font_size = new s14_localField("textsimple", "footer_text_font_size", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_text_font_size", $footer_text_font_size);
        $footer_text_letter_spacing = new s14_localField("textsimple", "footer_text_letter_spacing", "", esc_html__("Letter spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_text_letter_spacing", $footer_text_letter_spacing);
        $footer_text_line_height = new s14_localField("textsimple", "footer_text_line_height", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_text_line_height", $footer_text_line_height);
        $footer_text_font_family = new s14_localField("fontsimple", "footer_text_font_family", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_text_font_family", $footer_text_font_family);
        $row2 = new s14_localRow(true);
        $group2->addChild("row2", $row2);
        $footer_text_font_style = new s14_localField("selectblanksimple", "footer_text_font_style", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("footer_text_font_style", $footer_text_font_style);
        $footer_text_font_weight = new s14_localField("selectblanksimple", "footer_text_font_weight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("footer_text_font_weight", $footer_text_font_weight);
        $footer_text_text_transform = new s14_localField("selectblanksimple", "footer_text_text_transform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row2->addChild("footer_text_text_transform", $footer_text_text_transform);

        $group3 = new s14_localGroup(esc_html__("Footer top link styles", "s14_local"), esc_html__('Define styles for footer top link', "s14_local"));
        $panel5->addChild("group3", $group3);
        $row1 = new s14_localRow();
        $group3->addChild("row1", $row1);
        $footer_link_font_size = new s14_localField("textsimple", "footer_link_font_size", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_link_font_size", $footer_link_font_size);
        $footer_link_letter_spacing = new s14_localField("textsimple", "footer_link_letter_spacing", "", esc_html__("Letter spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_link_letter_spacing", $footer_link_letter_spacing);
        $footer_link_line_height = new s14_localField("textsimple", "footer_link_line_height", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_link_line_height", $footer_link_line_height);
        $footer_link_font_family = new s14_localField("fontsimple", "footer_link_font_family", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_link_font_family", $footer_link_font_family);
        $row2 = new s14_localRow(true);
        $group3->addChild("row2", $row2);
        $footer_link_font_style = new s14_localField("selectblanksimple", "footer_link_font_style", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("footer_link_font_style", $footer_link_font_style);
        $footer_link_font_weight = new s14_localField("selectblanksimple", "footer_link_font_weight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("footer_link_font_weight", $footer_link_font_weight);
        $footer_link_text_transform = new s14_localField("selectblanksimple", "footer_link_text_transform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row2->addChild("footer_link_text_transform", $footer_link_text_transform);

        $group4 = new s14_localGroup(esc_html__("Footer bottom text styles", "s14_local"), esc_html__('Define styles for footer bottom text', "s14_local"));
        $panel5->addChild("group4", $group4);
        $row1 = new s14_localRow();
        $group4->addChild("row1", $row1);
        $footer_bottom_text_font_size = new s14_localField("textsimple", "footer_bottom_text_font_size", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_bottom_text_font_size", $footer_bottom_text_font_size);
        $footer_bottom_text_letter_spacing = new s14_localField("textsimple", "footer_bottom_text_letter_spacing", "", esc_html__("Letter spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_bottom_text_letter_spacing", $footer_bottom_text_letter_spacing);
        $footer_bottom_text_line_height = new s14_localField("textsimple", "footer_bottom_text_line_height", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_bottom_text_line_height", $footer_bottom_text_line_height);
        $footer_bottom_text_font_family = new s14_localField("fontsimple", "footer_bottom_text_font_family", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_bottom_text_font_family", $footer_bottom_text_font_family);
        $row2 = new s14_localRow(true);
        $group4->addChild("row2", $row2);
        $footer_bottom_text_font_style = new s14_localField("selectblanksimple", "footer_bottom_text_font_style", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("footer_bottom_text_font_style", $footer_bottom_text_font_style);
        $footer_bottom_text_font_weight = new s14_localField("selectblanksimple", "footer_bottom_text_font_weight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("footer_bottom_text_font_weight", $footer_bottom_text_font_weight);
        $footer_bottom_text_text_transform = new s14_localField("selectblanksimple", "footer_bottom_text_text_transform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row2->addChild("footer_bottom_text_text_transform", $footer_bottom_text_text_transform);

        $group5 = new s14_localGroup(esc_html__("Footer bottom link styles", "s14_local"), esc_html__('Define styles for footer bottom link', "s14_local"));
        $panel5->addChild("group5", $group5);
        $row1 = new s14_localRow();
        $group5->addChild("row1", $row1);
        $footer_bottom_link_font_size = new s14_localField("textsimple", "footer_bottom_link_font_size", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_bottom_link_font_size", $footer_bottom_link_font_size);
        $footer_bottom_link_letter_spacing = new s14_localField("textsimple", "footer_bottom_link_letter_spacing", "", esc_html__("Letter spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_bottom_link_letter_spacing", $footer_bottom_link_letter_spacing);
        $footer_bottom_link_line_height = new s14_localField("textsimple", "footer_bottom_link_line_height", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_bottom_link_line_height", $footer_bottom_link_line_height);
        $footer_bottom_link_font_family = new s14_localField("fontsimple", "footer_bottom_link_font_family", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("footer_bottom_link_font_family", $footer_bottom_link_font_family);
        $row2 = new s14_localRow(true);
        $group5->addChild("row2", $row2);
        $footer_bottom_link_font_style = new s14_localField("selectblanksimple", "footer_bottom_link_font_style", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("footer_bottom_link_font_style", $footer_bottom_link_font_style);
        $footer_bottom_link_font_weight = new s14_localField("selectblanksimple", "footer_bottom_link_font_weight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("footer_bottom_link_font_weight", $footer_bottom_link_font_weight);
        $footer_bottom_link_text_transform = new s14_localField("selectblanksimple", "footer_bottom_link_text_transform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row2->addChild("footer_bottom_link_text_transform", $footer_bottom_link_text_transform);

        // Portfolio

        $panel6 = new s14_localPanel(esc_html__("Portfolio", "s14_local"), "portfolio_panel");
        $fontsPage->addChild("panel6", $panel6);

        $group1 = new s14_localGroup(esc_html__("Categories Filter", "s14_local"), esc_html__("Define styles for portfolio Category Filter", "s14_local"));
        $panel6->addChild("group1", $group1);
        $row1 = new s14_localRow();
        $group1->addChild("row1", $row1);
        $portfolio_filter_color = new s14_localField("colorsimple", "portfolio_filter_color", "", esc_html__("Text Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("portfolio_filter_color", $portfolio_filter_color);
        $portfolio_filter_hover_color = new s14_localField("colorsimple", "portfolio_filter_hover_color", "", esc_html__("Text Hover/Active Color", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("portfolio_filter_hover_color", $portfolio_filter_hover_color);
        $portfolio_filter_font_size = new s14_localField("textsimple", "portfolio_filter_font_size", "", esc_html__("Font Size (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("portfolio_filter_font_size", $portfolio_filter_font_size);
        $portfolio_filter_line_height = new s14_localField("textsimple", "portfolio_filter_line_height", "", esc_html__("Line Height (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row1->addChild("portfolio_filter_line_height", $portfolio_filter_line_height);
        $row2 = new s14_localRow(true);
        $group1->addChild("row2", $row2);
        $portfolio_filter_text_transform = new s14_localField("selectblanksimple", "portfolio_filter_text_transform", "", esc_html__("Text Transform", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_text_transform_array());
        $row2->addChild("portfolio_filter_text_transform", $portfolio_filter_text_transform);
        $portfolio_filter_font_family = new s14_localField("fontsimple", "portfolio_filter_font_family", "-1", esc_html__("Font Family", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row2->addChild("portfolio_filter_font_family", $portfolio_filter_font_family);
        $portfolio_filter_font_style = new s14_localField("selectblanksimple", "portfolio_filter_font_style", "", esc_html__("Font Style", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_style_array());
        $row2->addChild("portfolio_filter_font_style", $portfolio_filter_font_style);
        $portfolio_filter_font_weight = new s14_localField("selectblanksimple", "portfolio_filter_font_weight", "", esc_html__("Font Weight", "s14_local"), esc_html__("This is some description", "s14_local"), s14_local_get_font_weight_array());
        $row2->addChild("portfolio_filter_font_weight", $portfolio_filter_font_weight);
        $row3 = new s14_localRow(true);
        $group1->addChild("row3", $row3);
        $portfolio_filter_letter_spacing = new s14_localField("textsimple", "portfolio_filter_letter_spacing", "", esc_html__("Letter Spacing (px)", "s14_local"), esc_html__("This is some description", "s14_local"));
        $row3->addChild("portfolio_filter_letter_spacing", $portfolio_filter_letter_spacing);

    }
    add_action('s14_local_action_options_map','s14_local_fonts_options_map',60);
} -->