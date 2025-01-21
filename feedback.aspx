<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Evaluation</title>
    <link rel="shortcut icon" type="image/x-icon" href="shortcut.ico">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="flex.ico">
    <link rel="stylesheet" href="front-end/css/gridView.css">
    <link rel="stylesheet" href="front-end/css/faculty1.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

    <link rel="canonical" href="https://form.jotform.com/231072139016446" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
    <meta name="HandheldFriendly" content="true" />
    <link href="https://cdn01.jotfor.ms/static/formCss.css?3.3.41629" rel="stylesheet" type="text/css" />
    <link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/nova.css?3.3.41629" />


    <style type="text/css">
        @media print {
            .form-section {
                display: inline !important
            }

            .form-pagebreak {
                display: none !important
            }

            .form-section-closed {
                height: auto !important
            }

            .page-section {
                position: initial !important
            }
        }
    </style>

    <link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/themes/CSS/566a91c2977cdfcd478b4567.css?v=3.3.41629&themeRevisionID=5dca5ac9a5e86d17235d90c1" />
    <link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/css/styles/payment/payment_feature.css?3.3.41629" />


    <style type="text/css" id="form-designer-style">
        @import "https://fonts.googleapis.com/css?family=Nova Round:light,lightitalic,normal,italic,bold,bolditalic";
        @import (css) "@{buttonFontLink}";

        /* Injected CSS Code */
        .form-all:after {
            content: "";
            display: table;
            clear: both;
        }

        .form-all {
            font-family: "Nova Round", sans-serif;
        }

        .form-all {
            width: 690px;
        }

        .form-label-left,
        .form-label-right {
            width: 150px;
        }

        .form-label {
            white-space: normal;
        }

            .form-label.form-label-auto {
                display: block;
                float: none;
                word-break: break-word;
                text-align: left;
            }

        .form-label-left {
            display: inline-block;
            white-space: normal;
            float: left;
            text-align: left;
        }

        .form-label-right {
            display: inline-block;
            white-space: normal;
            float: left;
            text-align: right;
        }

        .form-label-top {
            white-space: normal;
            display: block;
            float: none;
            text-align: left;
        }

        .form-radio-item label:before {
            top: 0;
        }

        .form-all {
            font-size: 15px;
        }

        .form-label {
            font-weight: bold;
        }

        .form-checkbox-item label,
        .form-radio-item label {
            font-weight: normal;
        }

        .supernova {
            background-color: #d9e9ff;
            background-color: #2c56bf;
        }

            .supernova body {
                background-color: transparent;
            }

        /*
@width30: (unit(@formWidth, px) + 60px);
@width60: (unit(@formWidth, px)+ 120px);
@width90: (unit(@formWidth, px)+ 180px);
*/
        /* | */
        @media screen and (min-width: 480px) {
            .supernova .form-all {
                border: 1px solid #f56649;
                -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1);
                -moz-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1);
                box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1);
            }
        }

        /* | */
        /* | */
        @media screen and (max-width: 480px) {
            .jotform-form .form-all {
                margin: 0;
                width: 100%;
            }
        }

        /* | */
        /* | */
        @media screen and (min-width: 480px) and (max-width: 767px) {
            .jotform-form .form-all {
                margin: 0;
                width: 100%;
            }
        }

        /* | */
        /* | */
        @media screen and (min-width: 480px) and (max-width: 689px) {
            .jotform-form .form-all {
                margin: 0;
                width: 100%;
            }
        }

        /* | */
        /* | */
        @media screen and (min-width: 768px) {
            .jotform-form {
                padding: 60px 0;
            }
        }

        /* | */
        /* | */
        @media screen and (max-width: 689px) {
            .jotform-form .form-all {
                margin: 0;
                width: 100%;
            }
        }

        /* | */
        .supernova .form-all,
        .form-all {
            background-color: #d9e9ff;
            border: 1px solid transparent;
        }

        .form-header-group {
            border-color: #ffcbb9;
        }

        .form-matrix-table tr {
            border-color: #ffcbb9;
        }

            .form-matrix-table tr:nth-child(2n) {
                background-color: #c0d5eb;
            }

        .form-all {
            color: #8c2318;
        }

        .form-header-group .form-header {
            color: #8c2318;
        }

        .form-header-group .form-subHeader {
            color: #b82e1f;
        }

        .form-sub-label {
            color: #b82e1f;
        }

        .form-label-top,
        .form-label-left,
        .form-label-right,
        .form-html {
            color: #8c2318;
        }

        .form-checkbox-item label,
        .form-radio-item label {
            color: #b82e1f;
        }

        .form-line.form-line-active {
            -webkit-transition-property: all;
            -moz-transition-property: all;
            -ms-transition-property: all;
            -o-transition-property: all;
            transition-property: all;
            -webkit-transition-duration: 0.3s;
            -moz-transition-duration: 0.3s;
            -ms-transition-duration: 0.3s;
            -o-transition-duration: 0.3s;
            transition-duration: 0.3s;
            -webkit-transition-timing-function: ease;
            -moz-transition-timing-function: ease;
            -ms-transition-timing-function: ease;
            -o-transition-timing-function: ease;
            transition-timing-function: ease;
            background-color: rgba(255, 255, 255, 0.75);
        }

        /* omer */
        .form-radio-item,
        .form-checkbox-item {
            padding-bottom: 0px !important;
        }

            .form-radio-item:last-child,
            .form-checkbox-item:last-child {
                padding-bottom: 0;
            }

        /* omer */
        .form-single-column .form-checkbox-item,
        .form-single-column .form-radio-item {
            width: 100%;
        }

        .form-checkbox-item .editor-container div,
        .form-radio-item .editor-container div {
            position: relative;
        }

            .form-checkbox-item .editor-container div:before,
            .form-radio-item .editor-container div:before {
                display: inline-block;
                vertical-align: middle;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                left: 0;
                width: 18px;
                height: 18px;
            }

        .supernova {
            height: 100%;
            background-repeat: no-repeat;
            background-attachment: scroll;
            background-position: center top;
            background-repeat: repeat;
        }

        .supernova {
            background-image: none;
        }

        #stage {
            background-image: none;
        }

        /* | */
        .form-all {
            background-repeat: no-repeat;
            background-attachment: scroll;
            background-position: center top;
            background-repeat: repeat;
        }

        .form-header-group {
            background-repeat: no-repeat;
            background-attachment: scroll;
            background-position: center top;
        }

        .form-line {
            margin-top: 12px;
            margin-bottom: 12px;
        }

        .form-line {
            padding: 12px 36px;
        }

        .form-all .form-textbox,
        .form-all .form-radio-other-input,
        .form-all .form-checkbox-other-input,
        .form-all .form-captcha input,
        .form-all .form-spinner input,
        .form-all .form-pagebreak-back,
        .form-all .form-pagebreak-next,
        .form-all .qq-upload-button,
        .form-all .form-error-message {
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
        }

        .form-all .form-sub-label {
            margin-left: 3px;
        }

        .form-all .form-textarea {
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
        }

        .form-all .qq-upload-button,
        .form-all .form-submit-button,
        .form-all .form-submit-reset,
        .form-all .form-submit-print {
            font-size: 1em;
            padding: 9px 15px;
            font-family: "Nova Round", sans-serif;
            font-size: 15px;
            font-weight: normal;
        }

        .form-all .form-pagebreak-back,
        .form-all .form-pagebreak-next {
            font-size: 1em;
            padding: 9px 15px;
            font-family: "Nova Round", sans-serif;
            font-size: 15px;
            font-weight: normal;
        }

        /*
& when ( @buttonFontType = google ) {
	
}
*/
        h2.form-header {
            line-height: 1.618em;
            font-size: 1.714em;
        }

        h2 ~ .form-subHeader {
            line-height: 1.5em;
            font-size: 1.071em;
        }

        .form-header-group {
            text-align: left;
        }

        /*.form-dropdown,
.form-radio-item,
.form-checkbox-item,
.form-radio-other-input,
.form-checkbox-other-input,*/
        .form-captcha input,
        .form-spinner input,
        .form-error-message {
            padding: 4px 3px 2px 3px;
        }

        .form-header-group {
            font-family: "Nova Round", sans-serif;
        }

        .form-section {
            padding: 0px 0px 0px 0px;
        }

        .form-header-group {
            margin: 12px 36px 12px 36px;
        }

        .form-header-group {
            padding: 24px 0px 24px 0px;
        }

        .form-textbox,
        .form-textarea {
            border-color: #dfd9d9;
            color: #190101;
            padding: 7px 5px 5px 5px;
        }

        .form-textbox,
        .form-textarea,
        .form-radio-other-input,
        .form-checkbox-other-input,
        .form-captcha input,
        .form-spinner input {
            background-color: #ffffff;
        }

        .form-textbox {
            height: 23px;
        }

        [data-type="control_dropdown"] .form-input,
        [data-type="control_dropdown"] .form-input-wide {
            width: 150px;
        }

        .form-label {
            font-family: "Nova Round", sans-serif;
        }

        li[data-type="control_image"] div {
            text-align: left;
        }

        li[data-type="control_image"] img {
            border: none;
            border-width: 0px !important;
            border-style: solid !important;
            border-color: false !important;
        }

        .form-line-column {
            width: auto;
        }

        .form-line-error {
            overflow: hidden;
            -webkit-transition-property: none;
            -moz-transition-property: none;
            -ms-transition-property: none;
            -o-transition-property: none;
            transition-property: none;
            -webkit-transition-duration: 0.3s;
            -moz-transition-duration: 0.3s;
            -ms-transition-duration: 0.3s;
            -o-transition-duration: 0.3s;
            transition-duration: 0.3s;
            -webkit-transition-timing-function: ease;
            -moz-transition-timing-function: ease;
            -ms-transition-timing-function: ease;
            -o-transition-timing-function: ease;
            transition-timing-function: ease;
            background-color: #d1daf0;
        }

            .form-line-error .form-error-message {
                background-color: #ff3200;
                clear: both;
                float: none;
            }

                .form-line-error .form-error-message .form-error-arrow {
                    border-bottom-color: #ff3200;
                }

            .form-line-error input:not(#coupon-input),
            .form-line-error textarea,
            .form-line-error .form-validation-error {
                border: 1px solid #ff3200;
                -webkit-box-shadow: 0 0 3px #ff3200;
                -moz-box-shadow: 0 0 3px #ff3200;
                box-shadow: 0 0 3px #ff3200;
            }

        .form-all {
            position: relative;
        }

            .form-all:before {
                content: "";
                background-image: url("");
                display: inline-block;
                height: 140px;
                position: absolute;
                background-size: 140px 140px;
                background-repeat: no-repeat;
                width: 100%;
            }

        .form-all {
            margin-top: 150px !important;
        }

            .form-all:before {
                top: -150px;
                background-position: top center;
            }

        .ie-8 .form-all {
            margin-top: auto;
            margin-top: initial;
        }

            .ie-8 .form-all:before {
                display: none;
            }

        [data-type="control_clear"] {
            display: none;
        }

        /* | */
        @media screen and (max-width: 480px), screen and (max-device-width: 767px) and (orientation: portrait), screen and (max-device-width: 415px) and (orientation: landscape) {
            .testOne {
                letter-spacing: 0;
            }

            .form-all {
                border: 0;
                max-width: initial;
            }

            .form-sub-label-container {
                width: 100%;
                margin: 0;
                margin-right: 0;
                float: left;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            span.form-sub-label-container + span.form-sub-label-container {
                margin-right: 0;
            }

            .form-sub-label {
                white-space: normal;
            }

            .form-address-table td,
            .form-address-table th {
                padding: 0 1px 10px;
            }

            .form-submit-button,
            .form-submit-print,
            .form-submit-reset {
                width: 100%;
                margin-left: 0 !important;
            }

            div[id*=at_] {
                font-size: 14px;
                font-weight: 700;
                height: 8px;
                margin-top: 6px;
            }

            .showAutoCalendar {
                width: 20px;
            }

            img.form-image {
                max-width: 100%;
                height: auto;
            }

            .form-matrix-row-headers {
                width: 100%;
                word-break: break-all;
                min-width: 80px;
            }

            .form-collapse-table,
            .form-header-group {
                margin: 0;
            }

            .form-collapse-table {
                height: 100%;
                display: inline-block;
                width: 100%;
            }

            .form-collapse-hidden {
                display: none !important;
            }

            .form-input {
                width: 100%;
            }

            .form-label {
                width: 100% !important;
            }

            .form-label-left,
            .form-label-right {
                display: block;
                float: none;
                text-align: left;
                width: auto !important;
            }

            .form-line,
            .form-line.form-line-column {
                padding: 2% 5%;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            input[type=text],
            input[type=email],
            input[type=tel],
            textarea {
                width: 100%;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                max-width: initial !important;
            }

            .form-radio-other-input,
            .form-checkbox-other-input {
                max-width: 55% !important;
            }

            .form-dropdown,
            .form-textarea,
            .form-textbox {
                width: 100% !important;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            .form-input,
            .form-input-wide,
            .form-textarea,
            .form-textbox,
            .form-dropdown {
                max-width: initial !important;
            }

            .form-checkbox-item:not(#foo),
            .form-radio-item:not(#foo) {
                width: 100%;
            }

            .form-address-city,
            .form-address-line,
            .form-address-postal,
            .form-address-state,
            .form-address-table,
            .form-address-table .form-sub-label-container,
            .form-address-table select,
            .form-input {
                width: 100%;
            }

            div.form-header-group {
                padding: 24px 0px !important;
                margin: 0 12px 2% !important;
                margin-left: 5% !important;
                margin-right: 5% !important;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

                div.form-header-group.hasImage img {
                    max-width: 100%;
                }

            [data-type="control_button"] {
                margin-bottom: 0 !important;
            }

            [data-type=control_fullname] .form-sub-label-container {
                width: 48%;
            }

                [data-type=control_fullname] .form-sub-label-container:first-child {
                    margin-right: 4%;
                }

            [data-type=control_phone] .form-sub-label-container {
                width: 65%;
                margin-right: 0;
                margin-left: 0;
                float: left;
            }

                [data-type=control_phone] .form-sub-label-container:first-child {
                    width: 31%;
                    margin-right: 4%;
                }

            [data-type=control_datetime] .allowTime-container {
                width: 100%;
            }

                [data-type=control_datetime] .allowTime-container .form-sub-label-container {
                    width: 24% !important;
                    margin-left: 6%;
                    margin-right: 0;
                }

                    [data-type=control_datetime] .allowTime-container .form-sub-label-container:first-child {
                        margin-left: 0;
                    }

            [data-type=control_datetime] span + span + span > span:first-child {
                display: block;
                width: 100% !important;
            }

            [data-type=control_birthdate] .form-sub-label-container,
            [data-type=control_time] .form-sub-label-container {
                width: 27.3% !important;
                margin-right: 6% !important;
            }

                [data-type=control_time] .form-sub-label-container:last-child {
                    width: 33.3% !important;
                    margin-right: 0 !important;
                }

            .form-pagebreak-back-container,
            .form-pagebreak-next-container {
                min-height: 1px;
                width: 50% !important;
            }

            .form-pagebreak-back,
            .form-pagebreak-next,
            .form-product-item.hover-product-item {
                width: 100%;
            }

            .form-pagebreak-back-container {
                padding: 0;
                text-align: right;
            }

            .form-pagebreak-next-container {
                padding: 0;
                text-align: left;
            }

            .form-pagebreak {
                margin: 0 auto;
            }

            .form-buttons-wrapper {
                margin: 0 !important;
                margin-left: 0 !important;
            }

                .form-buttons-wrapper button {
                    width: 100%;
                }

                .form-buttons-wrapper .form-submit-print {
                    margin: 0 !important;
                }

            table {
                width: 100% !important;
                max-width: initial !important;
            }

                table td + td {
                    padding-left: 3%;
                }

            .form-checkbox-item,
            .form-radio-item {
                white-space: normal !important;
            }

                .form-checkbox-item input,
                .form-radio-item input {
                    width: auto;
                }

            .form-collapse-table {
                margin: 0 5%;
                display: block;
                zoom: 1;
                width: auto;
            }

                .form-collapse-table:before,
                .form-collapse-table:after {
                    display: table;
                    content: '';
                    line-height: 0;
                }

                .form-collapse-table:after {
                    clear: both;
                }

            .fb-like-box {
                width: 98% !important;
            }

            .form-error-message {
                clear: both;
                bottom: -10px;
            }

            .date-separate,
            .phone-separate {
                display: none;
            }

            .custom-field-frame,
            .direct-embed-widgets,
            .signature-pad-wrapper {
                width: 100% !important;
            }
        }

        /* | */
        /*PREFERENCES STYLE*/
        .form-all {
            font-family: Nova Round, sans-serif;
        }

            .form-all .qq-upload-button,
            .form-all .form-submit-button,
            .form-all .form-submit-reset,
            .form-all .form-submit-print {
                font-family: Nova Round, sans-serif;
            }

            .form-all .form-pagebreak-back-container,
            .form-all .form-pagebreak-next-container {
                font-family: Nova Round, sans-serif;
            }

        .form-header-group {
            font-family: Nova Round, sans-serif;
        }

        .form-label {
            font-family: Nova Round, sans-serif;
        }

            .form-label.form-label-auto {
                display: block;
                float: none;
                text-align: left;
                width: 100%;
            }

        .form-line {
            margin-top: 12px;
            margin-bottom: 12px;
        }

        .form-all {
            width: 690px;
        }

        .form-label.form-label-left,
        .form-label.form-label-right,
        .form-label.form-label-left.form-label-auto,
        .form-label.form-label-right.form-label-auto {
            width: 150px;
        }

        .form-all {
            font-size: 15px
        }

            .form-all .qq-upload-button,
            .form-all .qq-upload-button,
            .form-all .form-submit-button,
            .form-all .form-submit-reset,
            .form-all .form-submit-print {
                font-size: 15px
            }

            .form-all .form-pagebreak-back-container,
            .form-all .form-pagebreak-next-container {
                font-size: 15px
            }

        .supernova .form-all,
        .form-all {
            background-color: #d9e9ff;
            border: 1px solid transparent;
        }

        .form-all {
            color: #63211c;
        }

        .form-header-group .form-header {
            color: #63211c;
        }

        .form-header-group .form-subHeader {
            color: #63211c;
        }

        .form-label-top,
        .form-label-left,
        .form-label-right,
        .form-html,
        .form-checkbox-item label,
        .form-radio-item label {
            color: #63211c;
        }

        .form-sub-label {
            color: #7d3b36;
        }

        .supernova {
            background-color: #e5e2f3;
        }

            .supernova body {
                background: transparent;
            }

        .form-textbox,
        .form-textarea,
        .form-radio-other-input,
        .form-checkbox-other-input,
        .form-captcha input,
        .form-spinner input {
            background-color: #fff;
        }

        .supernova {
            background-image: none;
        }

        #stage {
            background-image: none;
        }

        .form-all {
            background-image: none;
        }

        .form-all {
            position: relative;
        }

            .form-all:before {
                content: "";
                background-image: url("Fleximg.png");
                display: inline-block;
                height: 80px;
                position: absolute;
                background-size: 150px 80px;
                background-repeat: no-repeat;
                width: 100%;
            }

        .form-all {
            margin-top: 90px !important;
        }

            .form-all:before {
                top: -90px;
                background-position: top center;
            }

        .ie-8 .form-all:before {
            display: none;
        }

        .ie-8 {
            margin-top: auto;
            margin-top: initial;
        }

        /*PREFERENCES STYLE*/
        /*__INSPECT_SEPERATOR__*/
        .form-label.form-label-auto {
            display: block;
            float: none;
            text-align: left;
            width: 100%;
        }

        .form-matrix-row-headers {
            padding-top: 4px;
            padding-bottom: 5px;
            padding-left: 6px;
        }

            .form-matrix-row-headers label {
                font-size: 12px;
            }

        .form-label {
            text-shadow: 1px 1px #ccc;
        }

        /* Injected CSS Code */
    </style>

    <link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/buttons/form-submit-button-cool_grey.css?3.3.41629" />
    <script src="https://cdn03.jotfor.ms/static/prototype.forms.js?3.3.41629" type="text/javascript"></script>
    <script src="https://cdn01.jotfor.ms/static/jotform.forms.js?3.3.41629" type="text/javascript"></script>
    <script src="https://cdn02.jotfor.ms/js/payments/validategateways.js?v=3.3.41629" type="text/javascript"></script>

    <script type="text/javascript">
        JotForm.newDefaultTheme = false;
        JotForm.extendsNewTheme = false;
        JotForm.singleProduct = false;
        JotForm.newPaymentUIForNewCreatedForms = false;
        JotForm.clearFieldOnHide = "disable";
        JotForm.submitError = "jumpToFirstError";
        JotForm.init(function () {
            /*INIT-START*/
            JotForm.calendarMonths = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
            JotForm.calendarDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
            JotForm.calendarOther = {
                "today": "Today"
            };
            var languageOptions = document.querySelectorAll('#langList li');
            for (var langIndex = 0; langIndex < languageOptions.length; langIndex++) {
                languageOptions[langIndex].on('click', function (e) {
                    setTimeout(function () {
                        JotForm.setCalendar("16", false, {
                            "days": {
                                "monday": true,
                                "tuesday": true,
                                "wednesday": true,
                                "thursday": true,
                                "friday": true,
                                "saturday": true,
                                "sunday": true
                            },
                            "future": true,
                            "past": true,
                            "custom": false,
                            "ranges": false,
                            "start": "",
                            "end": "",
                            "countSelectedDaysOnly": false
                        });
                    }, 0);
                });
            }
            JotForm.onTranslationsFetch(function () {
                JotForm.setCalendar("16", false, {
                    "days": {
                        "monday": true,
                        "tuesday": true,
                        "wednesday": true,
                        "thursday": true,
                        "friday": true,
                        "saturday": true,
                        "sunday": true
                    },
                    "future": true,
                    "past": true,
                    "custom": false,
                    "ranges": false,
                    "start": "",
                    "end": "",
                    "countSelectedDaysOnly": false
                });
            });
            if (window.JotForm && JotForm.accessible) $('input_4').setAttribute('tabindex', 0);
            if (window.JotForm && JotForm.accessible) $('input_5').setAttribute('tabindex', 0);
            if (window.JotForm && JotForm.accessible) $('input_6').setAttribute('tabindex', 0);
            if (window.JotForm && JotForm.accessible) $('input_8').setAttribute('tabindex', 0);
            if (window.JotForm && JotForm.accessible) $('input_15').setAttribute('tabindex', 0);
            JotForm.alterTexts(undefined);
            /*INIT-END*/
        });
        JotForm.prepareCalculationsOnTheFly([null, {
            "name": "teachersAssessment",
            "qid": "1",
            "text": "Feedback Form",
            "type": "control_head"
        }, {
                "name": "submit2",
                "qid": "2",
                "text": "Submit",
                "type": "control_button"
            }, {
                "name": "nameOf",
                "qid": "3",
                "text": "Name of Teacher",
                "type": "control_fullname"
            }, {
                "name": "subject",
                "qid": "4",
                "text": "Subject",
                "type": "control_textbox"
            }, {
                "name": "schedule",
                "qid": "5",
                "text": "Schedule",
                "type": "control_textbox"
            }, {
                "name": "roomNumber",
                "qid": "6",
                "text": "Room Number",
                "type": "control_textbox"
            }, {
                "name": "divider",
                "qid": "7",
                "type": "control_divider"
            }, {
                "name": "schoolYear",
                "qid": "8",
                "text": "School year",
                "type": "control_textbox"
            }, {
                "name": "input9",
                "qid": "9",
                "text": "Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button.\nFor reference, the metric are as follows:\n1  - Poor2 - Below Average3 - Average4 - Good5 - Excellent",
                "type": "control_text"
            }, {
                "name": "divider10",
                "qid": "10",
                "type": "control_divider"
            }, {
                "name": "appearanceAnd11",
                "qid": "11",
                "text": "Appearance and Personal Presentation",
                "type": "control_matrix"
            }, {
                "name": "professionalPractices",
                "qid": "12",
                "text": "Professional Practices ",
                "type": "control_matrix"
            }, {
                "name": "teachingMethods",
                "qid": "13",
                "text": "Teaching Methods",
                "type": "control_matrix"
            }, {
                "name": "dispositionTowards",
                "qid": "14",
                "text": "Disposition Towards Students",
                "type": "control_matrix"
            }, {
                "name": "comments",
                "qid": "15",
                "text": "Comments",
                "type": "control_textarea"
            }, {
                "name": "date",
                "qid": "16",
                "text": "Date",
                "type": "control_datetime"
            }]);
        setTimeout(function () {
            JotForm.paymentExtrasOnTheFly([null, {
                "name": "teachersAssessment",
                "qid": "1",
                "text": "Feedback Form",
                "type": "control_head"
            }, {
                    "name": "submit2",
                    "qid": "2",
                    "text": "Submit",
                    "type": "control_button"
                }, {
                    "name": "nameOf",
                    "qid": "3",
                    "text": "Name of Teacher",
                    "type": "control_fullname"
                }, {
                    "name": "subject",
                    "qid": "4",
                    "text": "Subject",
                    "type": "control_textbox"
                }, {
                    "name": "schedule",
                    "qid": "5",
                    "text": "Schedule",
                    "type": "control_textbox"
                }, {
                    "name": "roomNumber",
                    "qid": "6",
                    "text": "Room Number",
                    "type": "control_textbox"
                }, {
                    "name": "divider",
                    "qid": "7",
                    "type": "control_divider"
                }, {
                    "name": "schoolYear",
                    "qid": "8",
                    "text": "School year",
                    "type": "control_textbox"
                }, {
                    "name": "input9",
                    "qid": "9",
                    "text": "Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button.\nFor reference, the metric are as follows:\n1  - Poor2 - Below Average3 - Average4 - Good5 - Excellent",
                    "type": "control_text"
                }, {
                    "name": "divider10",
                    "qid": "10",
                    "type": "control_divider"
                }, {
                    "name": "appearanceAnd11",
                    "qid": "11",
                    "text": "Appearance and Personal Presentation",
                    "type": "control_matrix"
                }, {
                    "name": "professionalPractices",
                    "qid": "12",
                    "text": "Professional Practices ",
                    "type": "control_matrix"
                }, {
                    "name": "teachingMethods",
                    "qid": "13",
                    "text": "Teaching Methods",
                    "type": "control_matrix"
                }, {
                    "name": "dispositionTowards",
                    "qid": "14",
                    "text": "Disposition Towards Students",
                    "type": "control_matrix"
                }, {
                    "name": "comments",
                    "qid": "15",
                    "text": "Comments",
                    "type": "control_textarea"
                }, {
                    "name": "date",
                    "qid": "16",
                    "text": "Date",
                    "type": "control_datetime"
                }]);
        }, 20);
    </script>



</head>
<body>



    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
        <a class="navbar-brand" href="#">
            <img src="flex.ico" width="30" height="30" alt="FLEX">FLEX</a>
        <button class="navbar-toggler btn btn-secondary" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="StudentView.aspx">Home<span class="sr-only"></span></a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="StudentAttendance.aspx">Attendance</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="studentTranscript.aspx">Transcript</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="studentEvaluation.aspx">Evaluation Marks</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="feedback.aspx">Feedback</a>
                </li>
            </ul>
        </div>
    </nav>


    <form id="form1" runat="server">
        <div class="non-navbar" style="align-content: center">
            <div>


                <div role="main" class="form-all">
                    <ul class="form-section page-section">
                        <li id="cid_1" class="form-input-wide" data-type="control_head">
                            <div class="form-header-group  header-default">
                                <div class="header-text httal htvam">
                                    <h2 id="header_1" class="form-header" data-component="header">Feedback Form</h2>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_datetime" id="id_16">
                            <label class="form-label form-label-top form-label-auto" id="label_16" for="lite_mode_16">Date </label>
                            <div id="cid_16" class="form-input-wide">
                                <div data-wrapper-react="true">
                                    <div style="display: none">
                                        <span class="form-sub-label-container" style="vertical-align: top">
                                            <input type="tel" class="form-textbox validate[limitDate]" id="month_16" name="q16_date[month]" size="2" data-maxlength="2" data-age="" maxlength="2" value="" autocomplete="off" aria-labelledby="label_16 sublabel_16_month" />
                                            <span class="date-separate" aria-hidden="true">-</span>
                                            <label class="form-sub-label" for="month_16" id="sublabel_16_month" style="min-height: 13px" aria-hidden="false">Month</label>
                                        </span>
                                        <span class="form-sub-label-container" style="vertical-align: top">
                                            <input type="tel" class="form-textbox validate[limitDate]" id="day_16" name="q16_date[day]" size="2" data-maxlength="2" data-age="" maxlength="2" value="" autocomplete="off" aria-labelledby="label_16 sublabel_16_day" />
                                            <span class="date-separate" aria-hidden="true">-</span>
                                            <label class="form-sub-label" for="day_16" id="sublabel_16_day" style="min-height: 13px" aria-hidden="false">Day</label>
                                        </span>
                                        <span class="form-sub-label-container" style="vertical-align: top">
                                            <input type="tel" class="form-textbox validate[limitDate]" id="year_16" name="q16_date[year]" size="4" data-maxlength="4" data-age="" maxlength="4" value="" autocomplete="off" aria-labelledby="label_16 sublabel_16_year" />
                                            <label class="form-sub-label" for="year_16" id="sublabel_16_year" style="min-height: 13px" aria-hidden="false">Year</label>
                                        </span>
                                    </div>
                                    <span class="form-sub-label-container" style="vertical-align: top">
                                        <input type="text" class="form-textbox validate[limitDate, validateLiteDate]" id="lite_mode_16" size="12" data-maxlength="12" maxlength="12" data-age="" value="" data-format="mmddyyyy" data-seperator="-" placeholder="mm-dd-yyyy" autocomplete="off" aria-labelledby="label_16 sublabel_16_litemode" />
                                        <img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_16_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="No" data-version="v1" />
                                        <label class="form-sub-label" for="lite_mode_16" id="sublabel_16_litemode" style="min-height: 13px" aria-hidden="false">Date</label>
                                    </span>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_fullname" id="id_3">
                            <label class="form-label form-label-top form-label-auto" id="label_3" for="first_3">Name of Teacher </label>
                            <div id="cid_3" class="form-input-wide">
                                <div data-wrapper-react="true">
                                    <span class="form-sub-label-container" style="vertical-align: top" data-input-type="first">
                                        <input type="text" id="first_3" name="q3_nameOf[first]" class="form-textbox" data-defaultvalue="" autocomplete="section-input_3 given-name" size="10" value="" data-component="first" aria-labelledby="label_3 sublabel_3_first" />
                                        <label class="form-sub-label" for="first_3" id="sublabel_3_first" style="min-height: 13px" aria-hidden="false">First Name</label>
                                    </span>
                                    <span class="form-sub-label-container" style="vertical-align: top" data-input-type="last">
                                        <input type="text" id="last_3" name="q3_nameOf[last]" class="form-textbox" data-defaultvalue="" autocomplete="section-input_3 family-name" size="15" value="" data-component="last" aria-labelledby="label_3 sublabel_3_last" />
                                        <label class="form-sub-label" for="last_3" id="sublabel_3_last" style="min-height: 13px" aria-hidden="false">Last Name</label>
                                    </span>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_divider" id="id_10">
                            <div id="cid_10" class="form-input-wide">
                                <div class="divider" data-component="divider" style="border-bottom-width: 1px; border-bottom-style: solid; border-color: #e6e6e6; height: 1px; margin-left: 0px; margin-right: 0px; margin-top: 5px; margin-bottom: 5px"></div>
                            </div>
                        </li>
                        <li class="form-line form-line-column form-col-1" data-type="control_textbox" id="id_4">
                            <label class="form-label form-label-top form-label-auto" id="label_4" for="input_4">Subject </label>
                            <div id="cid_4" class="form-input-wide">
                                <input type="text" id="input_4" name="q4_subject" data-type="input-textbox" class="form-textbox" data-defaultvalue="" size="20" value="" data-component="textbox" aria-labelledby="label_4" />
                            </div>
                        </li>
                        <li class="form-line form-line-column form-col-2" data-type="control_textbox" id="id_5">
                            <label class="form-label form-label-top form-label-auto" id="label_5" for="input_5">Schedule </label>
                            <div id="cid_5" class="form-input-wide">
                                <input type="text" id="input_5" name="q5_schedule" data-type="input-textbox" class="form-textbox" data-defaultvalue="" size="20" value="" data-component="textbox" aria-labelledby="label_5" />
                            </div>
                        </li>
                        <li class="form-line form-line-column form-col-3" data-type="control_textbox" id="id_6">
                            <label class="form-label form-label-top form-label-auto" id="label_6" for="input_6">Room Number </label>
                            <div id="cid_6" class="form-input-wide">
                                <input type="text" id="input_6" name="q6_roomNumber" data-type="input-textbox" class="form-textbox" data-defaultvalue="" size="20" value="" data-component="textbox" aria-labelledby="label_6" />
                            </div>
                        </li>
                        <li class="form-line form-line-column form-col-4" data-type="control_textbox" id="id_8">
                            <label class="form-label form-label-top form-label-auto" id="label_8" for="input_8">School year </label>
                            <div id="cid_8" class="form-input-wide">
                                <input type="text" id="input_8" name="q8_schoolYear" data-type="input-textbox" class="form-textbox" data-defaultvalue="" size="20" value="" data-component="textbox" aria-labelledby="label_8" />
                            </div>
                        </li>
                        <li class="form-line" data-type="control_text" id="id_9">
                            <div id="cid_9" class="form-input-wide">
                                <div id="text_9" class="form-html" data-component="text" tabindex="0">
                                    <p>
                                        <strong>Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button.</strong>
                                    </p>
                                    <p>
                                        <strong>For reference, the metric are as follows:</strong>
                                    </p>
                                    <p style="padding-left: 30px;">1  - Poor
                                        <br />
                                        2 - Below Average
                                        <br />
                                        3 - Average
                                        <br />
                                        4 - Good
                                        <br />
                                        5 - Excellent </p>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_divider" id="id_7">
                            <div id="cid_7" class="form-input-wide">
                                <div class="divider" data-component="divider" style="border-bottom-width: 1px; border-bottom-style: solid; border-color: #e6e6e6; height: 1px; margin-left: 0px; margin-right: 0px; margin-top: 5px; margin-bottom: 5px"></div>
                            </div>
                        </li>
                        <li class="form-line jf-required" data-type="control_matrix" id="id_11">
                            <label class="form-label form-label-top" id="label_11" for="input_11">
                                Appearance and Personal Presentation <span class="form-required">*</span>
                            </label>
                            <div id="cid_11" class="form-input-wide jf-required">
                                <table summary="" aria-labelledby="label_11" cellpadding="4" cellspacing="0" class="form-matrix-table" data-component="matrix">
                                    <tr class="form-matrix-tr form-matrix-header-tr">
                                        <th class="form-matrix-th" style="border: none"></th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_0">
                                            <label id="label_11_col_0">1</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_1">
                                            <label id="label_11_col_1">2</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_2">
                                            <label id="label_11_col_2">3</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_3">
                                            <label id="label_11_col_3">4</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_4">
                                            <label id="label_11_col_4">5</label>
                                        </th>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_0">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_11_row_0">Teacher attends class in a well presentable manner</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_0_0" class="form-radio" name="q11_appearanceAnd11[0]" value="1" aria-labelledby="label_11_col_0 label_11_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_11_0_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_0_1" class="form-radio" name="q11_appearanceAnd11[0]" value="2" aria-labelledby="label_11_col_1 label_11_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_11_0_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_0_2" class="form-radio" name="q11_appearanceAnd11[0]" value="3" aria-labelledby="label_11_col_2 label_11_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_11_0_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_0_3" class="form-radio" name="q11_appearanceAnd11[0]" value="4" aria-labelledby="label_11_col_3 label_11_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_11_0_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_0_4" class="form-radio" name="q11_appearanceAnd11[0]" value="5" aria-labelledby="label_11_col_4 label_11_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_11_0_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_1">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_11_row_1">Teacher shows enthusiasm when teaching in class</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_1_0" class="form-radio" name="q11_appearanceAnd11[1]" value="1" aria-labelledby="label_11_col_0 label_11_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_11_1_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_1_1" class="form-radio" name="q11_appearanceAnd11[1]" value="2" aria-labelledby="label_11_col_1 label_11_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_11_1_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_1_2" class="form-radio" name="q11_appearanceAnd11[1]" value="3" aria-labelledby="label_11_col_2 label_11_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_11_1_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_1_3" class="form-radio" name="q11_appearanceAnd11[1]" value="4" aria-labelledby="label_11_col_3 label_11_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_11_1_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_1_4" class="form-radio" name="q11_appearanceAnd11[1]" value="5" aria-labelledby="label_11_col_4 label_11_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_11_1_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_2">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_11_row_2">Teacher shows initiative and flexibility in teaching</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_2_0" class="form-radio" name="q11_appearanceAnd11[2]" value="1" aria-labelledby="label_11_col_0 label_11_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_11_2_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_2_1" class="form-radio" name="q11_appearanceAnd11[2]" value="2" aria-labelledby="label_11_col_1 label_11_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_11_2_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_2_2" class="form-radio" name="q11_appearanceAnd11[2]" value="3" aria-labelledby="label_11_col_2 label_11_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_11_2_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_2_3" class="form-radio" name="q11_appearanceAnd11[2]" value="4" aria-labelledby="label_11_col_3 label_11_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_11_2_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_2_4" class="form-radio" name="q11_appearanceAnd11[2]" value="5" aria-labelledby="label_11_col_4 label_11_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_11_2_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_3">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_11_row_3">Teacher is well articulated and shows full knowledge of the subject in teaching</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_3_0" class="form-radio" name="q11_appearanceAnd11[3]" value="1" aria-labelledby="label_11_col_0 label_11_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_11_3_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_3_1" class="form-radio" name="q11_appearanceAnd11[3]" value="2" aria-labelledby="label_11_col_1 label_11_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_11_3_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_3_2" class="form-radio" name="q11_appearanceAnd11[3]" value="3" aria-labelledby="label_11_col_2 label_11_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_11_3_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_3_3" class="form-radio" name="q11_appearanceAnd11[3]" value="4" aria-labelledby="label_11_col_3 label_11_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_11_3_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_3_4" class="form-radio" name="q11_appearanceAnd11[3]" value="5" aria-labelledby="label_11_col_4 label_11_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_11_3_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_4">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_11_row_4">Teacher speaks loud and clear enough to be heard by the whole class </label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_4_0" class="form-radio" name="q11_appearanceAnd11[4]" value="1" aria-labelledby="label_11_col_0 label_11_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_11_4_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_4_1" class="form-radio" name="q11_appearanceAnd11[4]" value="2" aria-labelledby="label_11_col_1 label_11_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_11_4_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_4_2" class="form-radio" name="q11_appearanceAnd11[4]" value="3" aria-labelledby="label_11_col_2 label_11_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_11_4_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_4_3" class="form-radio" name="q11_appearanceAnd11[4]" value="4" aria-labelledby="label_11_col_3 label_11_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_11_4_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_11_4_4" class="form-radio" name="q11_appearanceAnd11[4]" value="5" aria-labelledby="label_11_col_4 label_11_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_11_4_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </li>
                        <li class="form-line jf-required" data-type="control_matrix" id="id_12">
                            <label class="form-label form-label-top" id="label_12" for="input_12">
                                Professional Practices <span class="form-required">*</span>
                            </label>
                            <div id="cid_12" class="form-input-wide jf-required">
                                <table summary="" aria-labelledby="label_12" cellpadding="4" cellspacing="0" class="form-matrix-table" data-component="matrix">
                                    <tr class="form-matrix-tr form-matrix-header-tr">
                                        <th class="form-matrix-th" style="border: none"></th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_0">
                                            <label id="label_12_col_0">1</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_1">
                                            <label id="label_12_col_1">2</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_2">
                                            <label id="label_12_col_2">3</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_3">
                                            <label id="label_12_col_3">4</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_4">
                                            <label id="label_12_col_4">5</label>
                                        </th>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_0">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_12_row_0">Teacher shows professionalism in class </label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_0_0" class="form-radio" name="q12_professionalPractices[0]" value="1" aria-labelledby="label_12_col_0 label_12_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_12_0_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_0_1" class="form-radio" name="q12_professionalPractices[0]" value="2" aria-labelledby="label_12_col_1 label_12_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_12_0_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_0_2" class="form-radio" name="q12_professionalPractices[0]" value="3" aria-labelledby="label_12_col_2 label_12_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_12_0_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_0_3" class="form-radio" name="q12_professionalPractices[0]" value="4" aria-labelledby="label_12_col_3 label_12_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_12_0_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_0_4" class="form-radio" name="q12_professionalPractices[0]" value="5" aria-labelledby="label_12_col_4 label_12_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_12_0_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_1">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_12_row_1">Teacher shows commitment to teaching the class</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_1_0" class="form-radio" name="q12_professionalPractices[1]" value="1" aria-labelledby="label_12_col_0 label_12_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_12_1_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_1_1" class="form-radio" name="q12_professionalPractices[1]" value="2" aria-labelledby="label_12_col_1 label_12_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_12_1_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_1_2" class="form-radio" name="q12_professionalPractices[1]" value="3" aria-labelledby="label_12_col_2 label_12_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_12_1_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_1_3" class="form-radio" name="q12_professionalPractices[1]" value="4" aria-labelledby="label_12_col_3 label_12_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_12_1_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_1_4" class="form-radio" name="q12_professionalPractices[1]" value="5" aria-labelledby="label_12_col_4 label_12_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_12_1_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_2">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_12_row_2">Teacher encourages students to engage in class discussions and ask questions</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_2_0" class="form-radio" name="q12_professionalPractices[2]" value="1" aria-labelledby="label_12_col_0 label_12_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_12_2_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_2_1" class="form-radio" name="q12_professionalPractices[2]" value="2" aria-labelledby="label_12_col_1 label_12_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_12_2_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_2_2" class="form-radio" name="q12_professionalPractices[2]" value="3" aria-labelledby="label_12_col_2 label_12_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_12_2_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_2_3" class="form-radio" name="q12_professionalPractices[2]" value="4" aria-labelledby="label_12_col_3 label_12_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_12_2_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_2_4" class="form-radio" name="q12_professionalPractices[2]" value="5" aria-labelledby="label_12_col_4 label_12_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_12_2_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_3">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_12_row_3">Teacher handles criticisms and suggestions professionally</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_3_0" class="form-radio" name="q12_professionalPractices[3]" value="1" aria-labelledby="label_12_col_0 label_12_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_12_3_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_3_1" class="form-radio" name="q12_professionalPractices[3]" value="2" aria-labelledby="label_12_col_1 label_12_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_12_3_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_3_2" class="form-radio" name="q12_professionalPractices[3]" value="3" aria-labelledby="label_12_col_2 label_12_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_12_3_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_3_3" class="form-radio" name="q12_professionalPractices[3]" value="4" aria-labelledby="label_12_col_3 label_12_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_12_3_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_3_4" class="form-radio" name="q12_professionalPractices[3]" value="5" aria-labelledby="label_12_col_4 label_12_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_12_3_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_4">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_12_row_4">Teacher comes to class on time</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_4_0" class="form-radio" name="q12_professionalPractices[4]" value="1" aria-labelledby="label_12_col_0 label_12_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_12_4_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_4_1" class="form-radio" name="q12_professionalPractices[4]" value="2" aria-labelledby="label_12_col_1 label_12_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_12_4_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_4_2" class="form-radio" name="q12_professionalPractices[4]" value="3" aria-labelledby="label_12_col_2 label_12_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_12_4_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_4_3" class="form-radio" name="q12_professionalPractices[4]" value="4" aria-labelledby="label_12_col_3 label_12_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_12_4_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_4_4" class="form-radio" name="q12_professionalPractices[4]" value="5" aria-labelledby="label_12_col_4 label_12_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_12_4_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_5">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_12_row_5">Teacher ends class on time</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_5_0" class="form-radio" name="q12_professionalPractices[5]" value="1" aria-labelledby="label_12_col_0 label_12_row_5" aria-label="Cells Radio Button" />
                                            <label for="input_12_5_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_5_1" class="form-radio" name="q12_professionalPractices[5]" value="2" aria-labelledby="label_12_col_1 label_12_row_5" aria-label="Cells Radio Button" />
                                            <label for="input_12_5_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_5_2" class="form-radio" name="q12_professionalPractices[5]" value="3" aria-labelledby="label_12_col_2 label_12_row_5" aria-label="Cells Radio Button" />
                                            <label for="input_12_5_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_5_3" class="form-radio" name="q12_professionalPractices[5]" value="4" aria-labelledby="label_12_col_3 label_12_row_5" aria-label="Cells Radio Button" />
                                            <label for="input_12_5_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_12_5_4" class="form-radio" name="q12_professionalPractices[5]" value="5" aria-labelledby="label_12_col_4 label_12_row_5" aria-label="Cells Radio Button" />
                                            <label for="input_12_5_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </li>
                        <li class="form-line jf-required" data-type="control_matrix" id="id_13">
                            <label class="form-label form-label-top" id="label_13" for="input_13">
                                Teaching Methods <span class="form-required">*</span>
                            </label>
                            <div id="cid_13" class="form-input-wide jf-required">
                                <table summary="" aria-labelledby="label_13" cellpadding="4" cellspacing="0" class="form-matrix-table" data-component="matrix">
                                    <tr class="form-matrix-tr form-matrix-header-tr">
                                        <th class="form-matrix-th" style="border: none"></th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_0">
                                            <label id="label_13_col_0">1</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_1">
                                            <label id="label_13_col_1">2</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_2">
                                            <label id="label_13_col_2">3</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_3">
                                            <label id="label_13_col_3">4</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_4">
                                            <label id="label_13_col_4">5</label>
                                        </th>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_0">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_13_row_0">Teacher shows well rounded knowledge over the subject matter</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_0_0" class="form-radio" name="q13_teachingMethods[0]" value="1" aria-labelledby="label_13_col_0 label_13_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_13_0_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_0_1" class="form-radio" name="q13_teachingMethods[0]" value="2" aria-labelledby="label_13_col_1 label_13_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_13_0_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_0_2" class="form-radio" name="q13_teachingMethods[0]" value="3" aria-labelledby="label_13_col_2 label_13_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_13_0_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_0_3" class="form-radio" name="q13_teachingMethods[0]" value="4" aria-labelledby="label_13_col_3 label_13_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_13_0_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_0_4" class="form-radio" name="q13_teachingMethods[0]" value="5" aria-labelledby="label_13_col_4 label_13_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_13_0_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_1">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_13_row_1">Teacher has organized the lesson conducive for easy understanding of students</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_1_0" class="form-radio" name="q13_teachingMethods[1]" value="1" aria-labelledby="label_13_col_0 label_13_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_13_1_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_1_1" class="form-radio" name="q13_teachingMethods[1]" value="2" aria-labelledby="label_13_col_1 label_13_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_13_1_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_1_2" class="form-radio" name="q13_teachingMethods[1]" value="3" aria-labelledby="label_13_col_2 label_13_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_13_1_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_1_3" class="form-radio" name="q13_teachingMethods[1]" value="4" aria-labelledby="label_13_col_3 label_13_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_13_1_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_1_4" class="form-radio" name="q13_teachingMethods[1]" value="5" aria-labelledby="label_13_col_4 label_13_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_13_1_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_2">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_13_row_2">Teacher shows dynamism and enthusiasm</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_2_0" class="form-radio" name="q13_teachingMethods[2]" value="1" aria-labelledby="label_13_col_0 label_13_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_13_2_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_2_1" class="form-radio" name="q13_teachingMethods[2]" value="2" aria-labelledby="label_13_col_1 label_13_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_13_2_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_2_2" class="form-radio" name="q13_teachingMethods[2]" value="3" aria-labelledby="label_13_col_2 label_13_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_13_2_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_2_3" class="form-radio" name="q13_teachingMethods[2]" value="4" aria-labelledby="label_13_col_3 label_13_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_13_2_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_2_4" class="form-radio" name="q13_teachingMethods[2]" value="5" aria-labelledby="label_13_col_4 label_13_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_13_2_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_3">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_13_row_3">Teacher stimulates the critical thinking of students</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_3_0" class="form-radio" name="q13_teachingMethods[3]" value="1" aria-labelledby="label_13_col_0 label_13_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_13_3_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_3_1" class="form-radio" name="q13_teachingMethods[3]" value="2" aria-labelledby="label_13_col_1 label_13_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_13_3_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_3_2" class="form-radio" name="q13_teachingMethods[3]" value="3" aria-labelledby="label_13_col_2 label_13_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_13_3_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_3_3" class="form-radio" name="q13_teachingMethods[3]" value="4" aria-labelledby="label_13_col_3 label_13_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_13_3_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_3_4" class="form-radio" name="q13_teachingMethods[3]" value="5" aria-labelledby="label_13_col_4 label_13_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_13_3_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_4">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_13_row_4">Teacher handles the class environment conducive for learning</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_4_0" class="form-radio" name="q13_teachingMethods[4]" value="1" aria-labelledby="label_13_col_0 label_13_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_13_4_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_4_1" class="form-radio" name="q13_teachingMethods[4]" value="2" aria-labelledby="label_13_col_1 label_13_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_13_4_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_4_2" class="form-radio" name="q13_teachingMethods[4]" value="3" aria-labelledby="label_13_col_2 label_13_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_13_4_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_4_3" class="form-radio" name="q13_teachingMethods[4]" value="4" aria-labelledby="label_13_col_3 label_13_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_13_4_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_13_4_4" class="form-radio" name="q13_teachingMethods[4]" value="5" aria-labelledby="label_13_col_4 label_13_row_4" aria-label="Cells Radio Button" />
                                            <label for="input_13_4_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </li>
                        <li class="form-line jf-required" data-type="control_matrix" id="id_14">
                            <label class="form-label form-label-top" id="label_14" for="input_14">
                                Disposition Towards Students <span class="form-required">*</span>
                            </label>
                            <div id="cid_14" class="form-input-wide jf-required">
                                <table summary="" aria-labelledby="label_14" cellpadding="4" cellspacing="0" class="form-matrix-table" data-component="matrix">
                                    <tr class="form-matrix-tr form-matrix-header-tr">
                                        <th class="form-matrix-th" style="border: none"></th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_0">
                                            <label id="label_14_col_0">1</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_1">
                                            <label id="label_14_col_1">2</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_2">
                                            <label id="label_14_col_2">3</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_3">
                                            <label id="label_14_col_3">4</label>
                                        </th>
                                        <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_4">
                                            <label id="label_14_col_4">5</label>
                                        </th>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_14 label_14_row_0">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_14_row_0">Teacher believes that students can learn from the class</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_0_0" class="form-radio" name="q14_dispositionTowards[0]" value="1" aria-labelledby="label_14_col_0 label_14_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_14_0_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_0_1" class="form-radio" name="q14_dispositionTowards[0]" value="2" aria-labelledby="label_14_col_1 label_14_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_14_0_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_0_2" class="form-radio" name="q14_dispositionTowards[0]" value="3" aria-labelledby="label_14_col_2 label_14_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_14_0_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_0_3" class="form-radio" name="q14_dispositionTowards[0]" value="4" aria-labelledby="label_14_col_3 label_14_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_14_0_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_0_4" class="form-radio" name="q14_dispositionTowards[0]" value="5" aria-labelledby="label_14_col_4 label_14_row_0" aria-label="Cells Radio Button" />
                                            <label for="input_14_0_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_14 label_14_row_1">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_14_row_1">Teacher shows equal respect to various cultural backgrounds, individuals, religion, and race</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_1_0" class="form-radio" name="q14_dispositionTowards[1]" value="1" aria-labelledby="label_14_col_0 label_14_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_14_1_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_1_1" class="form-radio" name="q14_dispositionTowards[1]" value="2" aria-labelledby="label_14_col_1 label_14_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_14_1_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_1_2" class="form-radio" name="q14_dispositionTowards[1]" value="3" aria-labelledby="label_14_col_2 label_14_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_14_1_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_1_3" class="form-radio" name="q14_dispositionTowards[1]" value="4" aria-labelledby="label_14_col_3 label_14_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_14_1_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_1_4" class="form-radio" name="q14_dispositionTowards[1]" value="5" aria-labelledby="label_14_col_4 label_14_row_1" aria-label="Cells Radio Button" />
                                            <label for="input_14_1_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_14 label_14_row_2">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_14_row_2">Teacher finds the students strengths as basis for growth and weaknesses for opportunities for improvement</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_2_0" class="form-radio" name="q14_dispositionTowards[2]" value="1" aria-labelledby="label_14_col_0 label_14_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_14_2_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_2_1" class="form-radio" name="q14_dispositionTowards[2]" value="2" aria-labelledby="label_14_col_1 label_14_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_14_2_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_2_2" class="form-radio" name="q14_dispositionTowards[2]" value="3" aria-labelledby="label_14_col_2 label_14_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_14_2_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_2_3" class="form-radio" name="q14_dispositionTowards[2]" value="4" aria-labelledby="label_14_col_3 label_14_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_14_2_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_2_4" class="form-radio" name="q14_dispositionTowards[2]" value="5" aria-labelledby="label_14_col_4 label_14_row_2" aria-label="Cells Radio Button" />
                                            <label for="input_14_2_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                    <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_14 label_14_row_3">
                                        <th scope="row" class="form-matrix-headers form-matrix-row-headers">
                                            <label id="label_14_row_3">Teacher understands the weakness of a student and helps in the student's improvement</label>
                                        </th>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_3_0" class="form-radio" name="q14_dispositionTowards[3]" value="1" aria-labelledby="label_14_col_0 label_14_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_14_3_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_3_1" class="form-radio" name="q14_dispositionTowards[3]" value="2" aria-labelledby="label_14_col_1 label_14_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_14_3_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_3_2" class="form-radio" name="q14_dispositionTowards[3]" value="3" aria-labelledby="label_14_col_2 label_14_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_14_3_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_3_3" class="form-radio" name="q14_dispositionTowards[3]" value="4" aria-labelledby="label_14_col_3 label_14_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_14_3_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                        <td class="form-matrix-values">
                                            <input type="radio" id="input_14_3_4" class="form-radio" name="q14_dispositionTowards[3]" value="5" aria-labelledby="label_14_col_4 label_14_row_3" aria-label="Cells Radio Button" />
                                            <label for="input_14_3_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_textarea" id="id_15">
                            <label class="form-label form-label-top form-label-auto" id="label_15" for="input_15">Comments </label>
                            <div id="cid_15" class="form-input-wide">
                                <textarea id="input_15" class="form-textarea" name="q15_comments" cols="62" rows="6" data-component="textarea" aria-labelledby="label_15"></textarea>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_button" id="id_2">
                            <div id="cid_2" class="form-input-wide">
                                <div data-align="center" class="form-buttons-wrapper form-buttons-center jsTest-button-wrapperField">
                                    <button id="input_2" type="submit" class="form-submit-button form-submit-button-cool_grey submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">Submit</button>
                                </div>
                            </div>
                        </li>
                        <li style="display: none">Should be Empty:
                            <input type="text" name="website" value="" />
                        </li>
                    </ul>
                </div>

            </div>
        </div>


    </form>
</body>
</html>
