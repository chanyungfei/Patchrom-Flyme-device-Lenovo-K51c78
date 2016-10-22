.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4
    .param p0, "s"    # Landroid/text/SpannableStringBuilder;
    .param p1, "i"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v3, 0x27

    .line 721
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 722
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 723
    const/4 v1, 0x1

    .line 754
    :cond_0
    :goto_0
    return v1

    .line 726
    :cond_1
    const/4 v1, 0x0

    .line 729
    .local v1, "count":I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 730
    add-int/lit8 p2, p2, -0x1

    .line 732
    :goto_1
    if-ge p1, p2, :cond_0

    .line 733
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 735
    .local v0, "c":C
    if-ne v0, v3, :cond_3

    .line 737
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 739
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 740
    add-int/lit8 p2, p2, -0x1

    .line 741
    add-int/lit8 v1, v1, 0x1

    .line 742
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 745
    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 749
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    .prologue
    .line 469
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Calendar;

    .prologue
    .line 565
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 568
    .local v7, "s":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v5

    .line 570
    .local v5, "localeData":Llibcore/icu/LocaleData;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 572
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 573
    const/4 v1, 0x1

    .line 574
    .local v1, "count":I
    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 576
    .local v0, "c":I
    const/16 v8, 0x27

    if-ne v0, v8, :cond_1

    .line 577
    invoke-static {v7, v3, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 578
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 572
    :cond_0
    :goto_1
    add-int/2addr v3, v1

    goto :goto_0

    .line 582
    :cond_1
    :goto_2
    add-int v8, v3, v1

    if-ge v8, v4, :cond_2

    add-int v8, v3, v1

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v0, :cond_2

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 587
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 641
    const/4 v6, 0x0

    .line 645
    .local v6, "replacement":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_0

    .line 646
    add-int v8, v3, v1

    invoke-virtual {v7, v3, v8, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 647
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 648
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    goto :goto_1

    .line 590
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_0
    iget-object v8, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x0

    aget-object v6, v8, v9

    .line 591
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 593
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_1
    const/4 v8, 0x5

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 594
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 597
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_2
    const/4 v8, 0x7

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v5, v8, v1, v0}, Landroid/text/format/DateFormat;->getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v6

    .line 599
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 603
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_3
    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 604
    .local v2, "hour":I
    const/16 v8, 0x68

    if-ne v0, v8, :cond_3

    if-nez v2, :cond_3

    .line 605
    const/16 v2, 0xc

    .line 607
    :cond_3
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 609
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 613
    .end local v2    # "hour":I
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_4
    const/16 v8, 0xb

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 620
    .restart local v2    # "hour":I
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 622
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 625
    .end local v2    # "hour":I
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_5
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v5, v8, v1, v0}, Landroid/text/format/DateFormat;->getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v6

    .line 627
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 629
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_6
    const/16 v8, 0xc

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 630
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 632
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_7
    const/16 v8, 0xd

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 633
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 635
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_8
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v6

    .line 636
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 638
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_9
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v6

    .line 639
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3

    .line 652
    .end local v0    # "c":I
    .end local v1    # "count":I
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_4
    instance-of v8, p0, Landroid/text/Spanned;

    if-eqz v8, :cond_5

    .line 653
    new-instance v8, Landroid/text/SpannedString;

    invoke-direct {v8, v7}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 655
    :goto_4
    return-object v8

    :cond_5
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 587
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x45 -> :sswitch_2
        0x48 -> :sswitch_4
        0x4b -> :sswitch_3
        0x4c -> :sswitch_5
        0x4d -> :sswitch_5
        0x61 -> :sswitch_0
        0x63 -> :sswitch_2
        0x64 -> :sswitch_1
        0x68 -> :sswitch_3
        0x6b -> :sswitch_4
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x79 -> :sswitch_8
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Date;

    .prologue
    .line 480
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 481
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 482
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .locals 6
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 697
    div-int/lit16 p0, p0, 0x3e8

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .local v2, "tb":Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    .line 701
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    neg-int p0, p0

    .line 707
    :goto_0
    div-int/lit16 v0, p0, 0xe10

    .line 708
    .local v0, "hours":I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 710
    .local v1, "minutes":I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 704
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    :cond_0
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "skeleton"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "value":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "value":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v5, 0x0

    .line 320
    .local v5, "result":Ljava/lang/String;
    if-eqz p1, :cond_17

    .line 322
    const-string v11, "dd"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_0

    const-string v2, "d"

    .line 323
    .local v2, "dayValue":Ljava/lang/String;
    :goto_0
    const-string v11, "MMMM"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_3

    const-string v11, "MMM"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_2

    const-string v11, "MM"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_1

    const-string v4, "M"

    .line 324
    .local v4, "monthValue":Ljava/lang/String;
    :goto_1
    const-string v11, "yyyy"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_4

    const-string v10, "y"

    .line 325
    .local v10, "yearValue":Ljava/lang/String;
    :goto_2
    const-string v11, "EEEE"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_5

    const-string v8, "E"

    .line 327
    .local v8, "weekValue":Ljava/lang/String;
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 328
    .local v1, "day":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 329
    .local v3, "month":I
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 330
    .local v9, "year":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 332
    .local v7, "week":I
    if-ltz v7, :cond_11

    if-ltz v3, :cond_11

    if-ltz v1, :cond_11

    if-ltz v9, :cond_11

    .line 333
    const/4 v6, 0x0

    .line 334
    .local v6, "template":Ljava/lang/String;
    if-ge v7, v1, :cond_b

    .line 335
    if-ge v9, v3, :cond_7

    if-ge v9, v1, :cond_7

    .line 336
    if-ge v3, v1, :cond_6

    .line 337
    const v11, 0x805000f

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 338
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    const/4 v12, 0x3

    aput-object v2, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    move-object v11, v5

    .line 418
    .end local v1    # "day":I
    .end local v2    # "dayValue":Ljava/lang/String;
    .end local v3    # "month":I
    .end local v4    # "monthValue":Ljava/lang/String;
    .end local v6    # "template":Ljava/lang/String;
    .end local v7    # "week":I
    .end local v8    # "weekValue":Ljava/lang/String;
    .end local v9    # "year":I
    .end local v10    # "yearValue":Ljava/lang/String;
    :goto_5
    return-object v11

    .line 322
    :cond_0
    const-string v2, "dd"

    goto :goto_0

    .line 323
    .restart local v2    # "dayValue":Ljava/lang/String;
    :cond_1
    const-string v4, "MM"

    goto :goto_1

    :cond_2
    const-string v4, "MMM"

    goto :goto_1

    :cond_3
    const-string v4, "MMMM"

    goto :goto_1

    .line 324
    .restart local v4    # "monthValue":Ljava/lang/String;
    :cond_4
    const-string v10, "yyyy"

    goto :goto_2

    .line 325
    .restart local v10    # "yearValue":Ljava/lang/String;
    :cond_5
    const-string v8, "EEEE"

    goto :goto_3

    .line 340
    .restart local v1    # "day":I
    .restart local v3    # "month":I
    .restart local v6    # "template":Ljava/lang/String;
    .restart local v7    # "week":I
    .restart local v8    # "weekValue":Ljava/lang/String;
    .restart local v9    # "year":I
    :cond_6
    const v11, 0x8050010

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 341
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 343
    :cond_7
    if-ge v3, v1, :cond_9

    .line 344
    if-ge v1, v9, :cond_8

    .line 345
    const v11, 0x8050011

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    const/4 v12, 0x3

    aput-object v10, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 348
    :cond_8
    const v11, 0x8050012

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 349
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v12, 0x3

    aput-object v2, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 352
    :cond_9
    if-ge v3, v9, :cond_a

    .line 353
    const v11, 0x8050013

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 354
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    const/4 v12, 0x3

    aput-object v10, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 356
    :cond_a
    const v11, 0x8050014

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 357
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 361
    :cond_b
    if-ge v9, v3, :cond_d

    if-ge v9, v1, :cond_d

    .line 362
    if-ge v3, v1, :cond_c

    .line 363
    const v11, 0x8050016

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 364
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 366
    :cond_c
    const v11, 0x8050017

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 367
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 369
    :cond_d
    if-ge v3, v1, :cond_f

    .line 370
    if-ge v1, v9, :cond_e

    .line 371
    const v11, 0x8050018

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 372
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 374
    :cond_e
    const v11, 0x8050019

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 375
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 378
    :cond_f
    if-ge v3, v9, :cond_10

    .line 379
    const v11, 0x805001a

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 380
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 382
    :cond_10
    const v11, 0x805002b

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 383
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 390
    .end local v6    # "template":Ljava/lang/String;
    :cond_11
    if-ltz v3, :cond_17

    if-ltz v1, :cond_17

    if-ltz v9, :cond_17

    .line 391
    const v11, 0x1040056

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 392
    .restart local v6    # "template":Ljava/lang/String;
    if-ge v9, v3, :cond_13

    if-ge v9, v1, :cond_13

    .line 393
    if-ge v3, v1, :cond_12

    .line 394
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    move-object v11, v5

    .line 412
    goto/16 :goto_5

    .line 396
    :cond_12
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 398
    :cond_13
    if-ge v3, v1, :cond_15

    .line 399
    if-ge v1, v9, :cond_14

    .line 400
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 402
    :cond_14
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 405
    :cond_15
    if-ge v3, v9, :cond_16

    .line 406
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 408
    :cond_16
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 417
    .end local v1    # "day":I
    .end local v2    # "dayValue":Ljava/lang/String;
    .end local v3    # "month":I
    .end local v4    # "monthValue":Ljava/lang/String;
    .end local v6    # "template":Ljava/lang/String;
    .end local v7    # "week":I
    .end local v8    # "weekValue":Ljava/lang/String;
    .end local v9    # "year":I
    .end local v10    # "yearValue":Ljava/lang/String;
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v11}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 418
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v11, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    goto/16 :goto_5
.end method

.method private static getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 2
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "day"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .prologue
    .line 660
    const/16 v1, 0x63

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    .line 661
    .local v0, "standalone":Z
    :goto_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 662
    if-eqz v0, :cond_1

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 666
    :goto_1
    return-object v1

    .line 660
    .end local v0    # "standalone":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 662
    .restart local v0    # "standalone":Z
    :cond_1
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    .line 663
    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 664
    if-eqz v0, :cond_3

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    .line 666
    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 2
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "month"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .prologue
    .line 671
    const/16 v1, 0x4c

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    .line 672
    .local v0, "standalone":Z
    :goto_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 673
    if-eqz v0, :cond_1

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 680
    :goto_1
    return-object v1

    .line 671
    .end local v0    # "standalone":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 673
    .restart local v0    # "standalone":Z
    :cond_1
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    .line 674
    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 675
    if-eqz v0, :cond_3

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    .line 676
    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    .line 677
    if-eqz v0, :cond_5

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_1

    .line 680
    :cond_6
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 286
    .local v0, "d":Llibcore/icu/LocaleData;
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5
    .param p0, "inDate"    # Ljava/util/Calendar;
    .param p1, "count"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 685
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 686
    .local v1, "tz":Ljava/util/TimeZone;
    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    .line 687
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 692
    :goto_0
    return-object v2

    .line 691
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 692
    .local v0, "dst":Z
    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "dst":Z
    :cond_1
    move v0, v2

    .line 691
    goto :goto_1
.end method

.method private static getYearString(II)Ljava/lang/String;
    .locals 5
    .param p0, "year"    # I
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x2

    .line 716
    if-gt p1, v1, :cond_0

    rem-int/lit8 v0, p0, 0x64

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasDesignator(Ljava/lang/CharSequence;C)Z
    .locals 6
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "designator"    # C

    .prologue
    const/4 v4, 0x0

    .line 507
    if-nez p0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v4

    .line 509
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 514
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 515
    const/4 v1, 0x1

    .line 516
    .local v1, "count":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 518
    .local v0, "c":I
    const/16 v5, 0x27

    if-ne v0, v5, :cond_3

    .line 519
    invoke-static {p0, v2, v3}, Landroid/text/format/DateFormat;->skipQuotedText(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 514
    :cond_2
    add-int/2addr v2, v1

    goto :goto_1

    .line 520
    :cond_3
    if-ne v0, p1, :cond_2

    .line 521
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "inFormat"    # Ljava/lang/CharSequence;

    .prologue
    .line 497
    const/16 v0, 0x73

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 193
    .local v0, "locale":Ljava/util/Locale;
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 194
    :try_start_0
    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v6

    .line 223
    .end local v0    # "locale":Ljava/util/Locale;
    :goto_0
    return v5

    .line 197
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 202
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 203
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 204
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "pattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 207
    const-string v4, "24"

    .line 215
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_1
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 216
    :try_start_1
    sput-object v0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 217
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 218
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    goto :goto_0

    .line 197
    .end local v1    # "natural":Ljava/text/DateFormat;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 209
    .restart local v1    # "natural":Ljava/text/DateFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_1

    .line 212
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v4, "12"

    goto :goto_1

    .line 218
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 223
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :cond_3
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method private static skipQuotedText(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v3, 0x27

    .line 529
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 530
    const/4 v1, 0x2

    .line 554
    :cond_0
    return v1

    .line 533
    :cond_1
    const/4 v1, 0x1

    .line 535
    .local v1, "count":I
    add-int/lit8 p1, p1, 0x1

    .line 537
    :goto_0
    if-ge p1, p2, :cond_0

    .line 538
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 540
    .local v0, "c":C
    if-ne v0, v3, :cond_2

    .line 541
    add-int/lit8 v1, v1, 0x1

    .line 543
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 544
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 549
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .locals 5
    .param p0, "inValue"    # I
    .param p1, "inMinDigits"    # I

    .prologue
    .line 758
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
