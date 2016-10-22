.class public Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;
.super Ljava/lang/Object;


# static fields
.field public static final Account:Lde/greenrobot/dao/Property;

.field public static final Action:Lde/greenrobot/dao/Property;

.field public static final AppChannel:Lde/greenrobot/dao/Property;

.field public static final AppVersionCode:Lde/greenrobot/dao/Property;

.field public static final AppVersionName:Lde/greenrobot/dao/Property;

.field public static final Category:Lde/greenrobot/dao/Property;

.field public static final EventTime:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final Label:Lde/greenrobot/dao/Property;

.field public static final NetSubType:Lde/greenrobot/dao/Property;

.field public static final NetworkStatus:Lde/greenrobot/dao/Property;

.field public static final Param:Lde/greenrobot/dao/Property;

.field public static final Pkg:Lde/greenrobot/dao/Property;

.field public static final Prio:Lde/greenrobot/dao/Property;

.field public static final RandomVal:Lde/greenrobot/dao/Property;

.field public static final SessionId:Lde/greenrobot/dao/Property;

.field public static final SessionTimeCur:Lde/greenrobot/dao/Property;

.field public static final SessionTimeFirst:Lde/greenrobot/dao/Property;

.field public static final SessionTimePre:Lde/greenrobot/dao/Property;

.field public static final UserId:Lde/greenrobot/dao/Property;

.field public static final UserIdClass:Lde/greenrobot/dao/Property;

.field public static final Value:Lde/greenrobot/dao/Property;

.field public static final Visits:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "id"

    const-string v5, "ID"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Id:Lde/greenrobot/dao/Property;

    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "pkg"

    const-string v8, "PKG"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Pkg:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "account"

    const-string v7, "ACCOUNT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Account:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Integer;

    const-string v5, "sessionId"

    const-string v7, "SESSION_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->SessionId:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Integer;

    const-string v5, "randomVal"

    const-string v7, "RANDOM_VAL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->RandomVal:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Long;

    const-string v5, "sessionTimeFirst"

    const-string v7, "SESSION_TIME_FIRST"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->SessionTimeFirst:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Long;

    const-string v5, "sessionTimePre"

    const-string v7, "SESSION_TIME_PRE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->SessionTimePre:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Long;

    const-string v5, "sessionTimeCur"

    const-string v7, "SESSION_TIME_CUR"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->SessionTimeCur:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/Integer;

    const-string v5, "visits"

    const-string v7, "VISITS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Visits:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "category"

    const-string v7, "CATEGORY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Category:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "action"

    const-string v7, "ACTION"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Action:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "label"

    const-string v7, "LABEL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Label:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/Double;

    const-string v5, "value"

    const-string v7, "VALUE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Value:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/Integer;

    const-string v5, "networkStatus"

    const-string v7, "NETWORK_STATUS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->NetworkStatus:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/Integer;

    const-string v5, "netSubType"

    const-string v7, "NET_SUB_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->NetSubType:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/String;

    const-string v5, "userId"

    const-string v7, "USER_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->UserId:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/String;

    const-string v5, "userIdClass"

    const-string v7, "USER_ID_CLASS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->UserIdClass:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/Long;

    const-string v5, "eventTime"

    const-string v7, "EVENT_TIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->EventTime:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/lang/Integer;

    const-string v5, "appVersionCode"

    const-string v7, "APP_VERSION_CODE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->AppVersionCode:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/String;

    const-string v5, "appVersionName"

    const-string v7, "APP_VERSION_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->AppVersionName:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/String;

    const-string v5, "appChannel"

    const-string v7, "APP_CHANNEL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->AppChannel:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/Integer;

    const-string v5, "prio"

    const-string v7, "PRIO"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Prio:Lde/greenrobot/dao/Property;

    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/String;

    const-string v5, "param"

    const-string v7, "PARAMMAP"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/lenovo/lps/reaper/sdk/db/EventDao$Properties;->Param:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
