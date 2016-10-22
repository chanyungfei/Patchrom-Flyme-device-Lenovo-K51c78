.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    }
.end annotation


# static fields
.field private static final ALLOW_ATT_ALLOW_WHITELIST:Ljava/lang/String; = "allow_white_list"

.field private static final ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ALLOW_ATT_REPEAT_CALLS:Ljava/lang/String; = "repeat_calls"

.field private static final ALLOW_ATT_TIME_SWITCH:Ljava/lang/String; = "time_switch"

.field private static final ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final ALL_DAYS:[I

.field private static final CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final CONDITION_TAG:Ljava/lang/String; = "condition"

.field public static final COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ALLOW_EVENTS:Z = true

.field public static final DOWNTIME_PATH:Ljava/lang/String; = "downtime"

.field private static final EXIT_CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final EXIT_CONDITION_TAG:Ljava/lang/String; = "exitCondition"

.field public static final MAX_SOURCE:I = 0x2

.field private static final MINUTES_MS:I = 0xea60

.field public static final MINUTE_BUCKETS:[I

.field public static final NEXT_ALARM_PATH:Ljava/lang/String; = "next_alarm"

.field private static final SECONDS_MS:I = 0x3e8

.field private static final SLEEP_ATT_END_HR:Ljava/lang/String; = "endHour"

.field private static final SLEEP_ATT_END_MIN:Ljava/lang/String; = "endMin"

.field private static final SLEEP_ATT_MODE:Ljava/lang/String; = "mode"

.field private static final SLEEP_ATT_NONE:Ljava/lang/String; = "none"

.field private static final SLEEP_ATT_START_HR:Ljava/lang/String; = "startHour"

.field private static final SLEEP_ATT_START_MIN:Ljava/lang/String; = "startMin"

.field public static final SLEEP_MODE_DAYS_PREFIX:Ljava/lang/String; = "days:"

.field public static final SLEEP_MODE_NIGHTS:Ljava/lang/String; = "nights"

.field public static final SLEEP_MODE_WEEKNIGHTS:Ljava/lang/String; = "weeknights"

.field private static final SLEEP_TAG:Ljava/lang/String; = "sleep"

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static TAG:Ljava/lang/String; = null

.field public static final WEEKNIGHT_DAYS:[I

.field public static final WHITELIST_CONTACT:I = 0x1

.field public static final WHITELIST_CUSTOM:I = 0x2

.field public static final WHITELIST_NONE:I = 0x0

.field private static final XML_VERSION:I = 0x1

.field private static final ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public allowCalls:Z

.field public allowEvents:Z

.field public allowFrom:I

.field public allowMessages:Z

.field public allowRepeatCalls:Z

.field public allowWhiteList:I

.field public conditionComponents:[Landroid/content/ComponentName;

.field public conditionIds:[Landroid/net/Uri;

.field public exitCondition:Landroid/service/notification/Condition;

.field public exitConditionComponent:Landroid/content/ComponentName;

.field public sleepEndHour:I

.field public sleepEndMinute:I

.field public sleepMode:Ljava/lang/String;

.field public sleepNone:Z

.field public sleepStartHour:I

.field public sleepStartMinute:I

.field public timeSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ZenModeConfig"

    sput-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 547
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 61
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    .line 63
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 66
    :array_2
    .array-data 4
        0xf
        0x1e
        0x2d
        0x3c
        0x78
        0xb4
        0xf0
        0x1e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 120
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 127
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->sleepModeDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 120
    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 127
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->sleepModeDefaultValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 153
    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v4, "ZenModeConfig read int 1"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    .line 162
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_8

    :goto_6
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 169
    new-array v1, v0, [Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 170
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    if-lez v0, :cond_1

    .line 174
    new-array v1, v0, [Landroid/net/Uri;

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 175
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 178
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Condition;

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    .line 179
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    .line 180
    return-void

    .end local v0    # "len":I
    :cond_2
    move v1, v3

    .line 142
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 145
    goto/16 :goto_1

    :cond_4
    move v1, v3

    .line 147
    goto/16 :goto_2

    :cond_5
    move v1, v3

    .line 149
    goto/16 :goto_3

    :cond_6
    move v1, v3

    .line 150
    goto :goto_4

    .line 157
    :cond_7
    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v4, "ZenModeConfig read int 0"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v1, ""

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move v2, v3

    .line 166
    goto :goto_6
.end method

.method public static isValidCountdownConditionId(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 630
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDowntimeConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 677
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidHour(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 501
    if-ltz p0, :cond_0

    const/16 v0, 0x18

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidMinute(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 505
    if-ltz p0, :cond_0

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSleepMode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sleepMode"    # Ljava/lang/String;

    .prologue
    .line 325
    if-eqz p0, :cond_0

    const-string/jumbo v0, "nights"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "weeknights"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 475
    const-string v0, "id"

    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 476
    .local v1, "id":Landroid/net/Uri;
    const-string/jumbo v0, "summary"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "summary":Ljava/lang/String;
    const-string v0, "line1"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "line1":Ljava/lang/String;
    const-string v0, "line2"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "line2":Ljava/lang/String;
    const-string v0, "icon"

    invoke-static {p0, v0, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 480
    .local v5, "icon":I
    const-string/jumbo v0, "state"

    invoke-static {p0, v0, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 481
    .local v6, "state":I
    const-string v0, "flags"

    invoke-static {p0, v0, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 483
    .local v7, "flags":I
    :try_start_0
    new-instance v0, Landroid/service/notification/Condition;

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-object v0

    .line 484
    :catch_0
    move-exception v8

    .line 485
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v10, "Unable to read condition xml"

    invoke-static {v0, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 486
    goto :goto_0
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    .locals 17
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .line 359
    .local v12, "type":I
    const/4 v14, 0x2

    if-eq v12, v14, :cond_1

    const/4 v8, 0x0

    .line 374
    :cond_0
    :goto_0
    return-object v8

    .line 360
    :cond_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 361
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v14, "zen"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    .line 362
    :cond_2
    new-instance v8, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v8}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 363
    .local v8, "rt":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v14, "version"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 364
    .local v13, "version":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v2, "conditionComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v4, "conditionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_e

    .line 367
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 368
    const/4 v14, 0x3

    if-ne v12, v14, :cond_4

    const-string/jumbo v14, "zen"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 369
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 370
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/ComponentName;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/ComponentName;

    iput-object v14, v8, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 372
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/net/Uri;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/net/Uri;

    iput-object v14, v8, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    goto :goto_0

    .line 376
    :cond_4
    const/4 v14, 0x2

    if-ne v12, v14, :cond_3

    .line 377
    const-string v14, "allow"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 379
    const-string/jumbo v14, "time_switch"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    .line 380
    const-string v14, "allow_white_list"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v8, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    .line 382
    const-string v14, "calls"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 384
    const-string/jumbo v14, "repeat_calls"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    .line 386
    const-string/jumbo v14, "messages"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 387
    const-string v14, "events"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 389
    const-string v14, "from"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v8, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 390
    iget v14, v8, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    if-ltz v14, :cond_5

    iget v14, v8, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    const/4 v15, 0x2

    if-le v14, v15, :cond_3

    .line 391
    :cond_5
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bad source in config:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 393
    :cond_6
    const-string/jumbo v14, "sleep"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 394
    const/4 v14, 0x0

    const-string/jumbo v15, "mode"

    move-object/from16 v0, p0

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 395
    .local v7, "mode":Ljava/lang/String;
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->isValidSleepMode(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .end local v7    # "mode":Ljava/lang/String;
    :goto_2
    iput-object v7, v8, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    .line 396
    const-string/jumbo v14, "none"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    .line 397
    const-string/jumbo v14, "startHour"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 398
    .local v9, "startHour":I
    const-string/jumbo v14, "startMin"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 399
    .local v10, "startMinute":I
    const-string v14, "endHour"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 400
    .local v5, "endHour":I
    const-string v14, "endMin"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 401
    .local v6, "endMinute":I
    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v14

    if-eqz v14, :cond_8

    .end local v9    # "startHour":I
    :goto_3
    iput v9, v8, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    .line 402
    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v14

    if-eqz v14, :cond_9

    .end local v10    # "startMinute":I
    :goto_4
    iput v10, v8, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    .line 403
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v14

    if-eqz v14, :cond_a

    .end local v5    # "endHour":I
    :goto_5
    iput v5, v8, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    .line 404
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .end local v6    # "endMinute":I
    :goto_6
    iput v6, v8, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    goto/16 :goto_1

    .line 395
    .restart local v7    # "mode":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 401
    .end local v7    # "mode":Ljava/lang/String;
    .restart local v5    # "endHour":I
    .restart local v6    # "endMinute":I
    .restart local v9    # "startHour":I
    .restart local v10    # "startMinute":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 402
    .end local v9    # "startHour":I
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 403
    .end local v10    # "startMinute":I
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 404
    .end local v5    # "endHour":I
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 405
    .end local v6    # "endMinute":I
    :cond_c
    const-string v14, "condition"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 406
    const-string v14, "component"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 408
    .local v1, "component":Landroid/content/ComponentName;
    const-string v14, "id"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 409
    .local v3, "conditionId":Landroid/net/Uri;
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 410
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 413
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "conditionId":Landroid/net/Uri;
    :cond_d
    const-string v14, "exitCondition"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 414
    invoke-static/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v14

    iput-object v14, v8, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    .line 415
    iget-object v14, v8, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v14, :cond_3

    .line 416
    const-string v14, "component"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    iput-object v14, v8, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 422
    :cond_e
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Failed to reach END_DOCUMENT"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private static safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 509
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .restart local p2    # "defValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method private static safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 515
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 526
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private static sleepModeDefaultValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "days:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 185
    .local v1, "empty":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 186
    sget-object v4, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    aget v0, v4, v2

    .line 187
    .local v0, "day":I
    if-eqz v1, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 192
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 194
    .end local v0    # "day":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static sourceToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # I

    .prologue
    .line 265
    packed-switch p0, :pswitch_data_0

    .line 273
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 267
    :pswitch_0
    const-string v0, "anyone"

    goto :goto_0

    .line 269
    :pswitch_1
    const-string v0, "contacts"

    goto :goto_0

    .line 271
    :pswitch_2
    const-string/jumbo v0, "stars"

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toCountdownConditionId(J)Landroid/net/Uri;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 610
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "downtime"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .prologue
    .line 638
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "downtime"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "end"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "mode"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "none"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->none:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 573
    .local v4, "now":J
    if-nez p1, :cond_0

    const-wide/16 v8, 0x2710

    .line 574
    .local v8, "millis":J
    :goto_0
    add-long v1, v4, v8

    move-object v0, p0

    move v3, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIJI)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0

    .line 573
    .end local v8    # "millis":J
    :cond_0
    const v0, 0xea60

    mul-int/2addr v0, p1

    int-to-long v8, v0

    goto :goto_0
.end method

.method public static toTimeCondition(Landroid/content/Context;JIJI)Landroid/service/notification/Condition;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minutes"    # I
    .param p4, "now"    # J
    .param p6, "userHandle"    # I

    .prologue
    .line 580
    const/16 v2, 0x3c

    move/from16 v0, p3

    if-ge v0, v2, :cond_0

    .line 582
    move/from16 v12, p3

    .line 583
    .local v12, "num":I
    const v16, 0x1140019

    .line 584
    .local v16, "summaryResId":I
    const v11, 0x114001b

    .line 591
    .local v11, "line1ResId":I
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v15, "Hm"

    .line 592
    .local v15, "skeleton":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v15}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 593
    .local v13, "pattern":Ljava/lang/String;
    move-wide/from16 v0, p1

    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    .line 594
    .local v10, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 595
    .local v14, "res":Landroid/content/res/Resources;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x1

    aput-object v10, v2, v7

    move/from16 v0, v16

    invoke-virtual {v14, v0, v12, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "summary":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    const/4 v7, 0x1

    aput-object v10, v2, v7

    invoke-virtual {v14, v11, v12, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 597
    .local v5, "line1":Ljava/lang/String;
    const v2, 0x104069b

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v10, v7, v8

    invoke-virtual {v14, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, "line2":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v3

    .line 599
    .local v3, "id":Landroid/net/Uri;
    new-instance v2, Landroid/service/notification/Condition;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v2

    .line 587
    .end local v3    # "id":Landroid/net/Uri;
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "line1":Ljava/lang/String;
    .end local v6    # "line2":Ljava/lang/String;
    .end local v10    # "formattedTime":Ljava/lang/CharSequence;
    .end local v11    # "line1ResId":I
    .end local v12    # "num":I
    .end local v13    # "pattern":Ljava/lang/String;
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "skeleton":Ljava/lang/String;
    .end local v16    # "summaryResId":I
    :cond_0
    move/from16 v0, p3

    int-to-float v2, v0

    const/high16 v7, 0x42700000    # 60.0f

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 588
    .restart local v12    # "num":I
    const v16, 0x114001a

    .line 589
    .restart local v16    # "summaryResId":I
    const v11, 0x114001c

    .restart local v11    # "line1ResId":I
    goto :goto_0

    .line 591
    :cond_1
    const-string v15, "hma"

    goto :goto_1
.end method

.method public static tryParseCountdownConditionId(Landroid/net/Uri;)J
    .locals 6
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v2, 0x0

    .line 618
    const-string v1, "android"

    invoke-static {p0, v1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-wide v2

    .line 619
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const-string v1, "countdown"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing countdown condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static tryParseDays(Ljava/lang/String;)[I
    .locals 8
    .param p0, "sleepMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 330
    if-nez p0, :cond_1

    move-object v2, v4

    .line 344
    :cond_0
    :goto_0
    return-object v2

    .line 331
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 332
    const-string/jumbo v5, "nights"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v2, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    goto :goto_0

    .line 333
    :cond_2
    const-string/jumbo v5, "weeknights"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v2, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    goto :goto_0

    .line 334
    :cond_3
    const-string v5, "days:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v2, v4

    goto :goto_0

    .line 335
    :cond_4
    const-string v5, "days:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v2, v4

    goto :goto_0

    .line 336
    :cond_5
    const-string v5, "days:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "tokens":[Ljava/lang/String;
    array-length v5, v3

    if-nez v5, :cond_6

    move-object v2, v4

    goto :goto_0

    .line 338
    :cond_6
    array-length v5, v3

    new-array v2, v5, [I

    .line 339
    .local v2, "rt":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 340
    aget-object v5, v3, v1

    invoke-static {v5, v7}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 341
    .local v0, "day":I
    if-ne v0, v7, :cond_7

    move-object v2, v4

    goto :goto_0

    .line 342
    :cond_7
    aput v0, v2, v1

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .locals 7
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 649
    const-string v3, "android"

    invoke-static {p0, v3}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_0

    const-string v3, "downtime"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-object v0

    .line 654
    :cond_1
    const-string/jumbo v3, "start"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v2

    .line 655
    .local v2, "start":[I
    const-string v3, "end"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v1

    .line 656
    .local v1, "end":[I
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 657
    new-instance v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;-><init>()V

    .line 658
    .local v0, "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    aget v3, v2, v6

    iput v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    .line 659
    aget v3, v2, v5

    iput v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    .line 660
    aget v3, v1, v6

    iput v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    .line 661
    aget v3, v1, v5

    iput v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    .line 662
    const-string/jumbo v3, "mode"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    .line 663
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->none:Z

    goto :goto_0
.end method

.method private static tryParseHourAndMinute(Ljava/lang/String;)[I
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 668
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-object v3

    .line 669
    :cond_1
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 670
    .local v1, "i":I
    if-lt v1, v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 671
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 672
    .local v0, "hour":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    .line 673
    .local v2, "minute":I
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v6

    aput v2, v3, v7

    goto :goto_0
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 350
    .restart local p1    # "defValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 491
    const-string v0, "id"

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    const-string/jumbo v0, "summary"

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    const-string v0, "line1"

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    const-string v0, "line2"

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    const-string v0, "icon"

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    const-string v0, "flags"

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    return-void
.end method


# virtual methods
.method public copy()Landroid/service/notification/ZenModeConfig;
    .locals 2

    .prologue
    .line 537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 539
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 540
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 541
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    instance-of v3, p1, Landroid/service/notification/ZenModeConfig;

    if-nez v3, :cond_1

    move v1, v2

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 280
    :cond_1
    if-eq p1, p0, :cond_0

    move-object v0, p1

    .line 281
    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 285
    .local v0, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    if-ne v3, v4, :cond_2

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 310
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidSleepMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .locals 2

    .prologue
    .line 561
    new-instance v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;-><init>()V

    .line 562
    .local v0, "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    .line 563
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    .line 564
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    .line 565
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    .line 566
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    .line 567
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->none:Z

    .line 568
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x2e

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v2, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",timeSwitch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",allowWhiteList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "allowCalls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",allowRepeatCalls"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",allowMessages="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",allowFrom="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",allowEvents="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sleepMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sleepStart="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sleepEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sleepNone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",conditionComponents="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",conditionIds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exitCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exitConditionComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ","

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, ","

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 210
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    :goto_5
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 221
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 226
    :goto_7
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 227
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 232
    :goto_8
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 234
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 235
    return-void

    :cond_0
    move v0, v2

    .line 200
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 203
    goto :goto_1

    :cond_2
    move v0, v2

    .line 205
    goto :goto_2

    :cond_3
    move v0, v2

    .line 207
    goto :goto_3

    :cond_4
    move v0, v2

    .line 208
    goto :goto_4

    .line 213
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_6
    move v1, v2

    .line 219
    goto :goto_6

    .line 224
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 230
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 426
    const-string/jumbo v1, "zen"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const-string/jumbo v1, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const-string v1, "allow"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const-string/jumbo v1, "time_switch"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const-string v1, "allow_white_list"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const-string v1, "calls"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    const-string/jumbo v1, "repeat_calls"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    const-string/jumbo v1, "messages"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const-string v1, "events"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string v1, "from"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const-string v1, "allow"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const-string/jumbo v1, "sleep"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 445
    const-string/jumbo v1, "mode"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    :cond_0
    const-string/jumbo v1, "none"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    const-string/jumbo v1, "startHour"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    const-string/jumbo v1, "startMin"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const-string v1, "endHour"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    const-string v1, "endMin"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    const-string/jumbo v1, "sleep"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v1, v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 457
    const-string v1, "condition"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    const-string v1, "component"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    const-string v1, "id"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 461
    const-string v1, "condition"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 465
    const-string v1, "exitCondition"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 466
    const-string v1, "component"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-static {v1, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 469
    const-string v1, "exitCondition"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 471
    :cond_2
    const-string/jumbo v1, "zen"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    return-void
.end method
