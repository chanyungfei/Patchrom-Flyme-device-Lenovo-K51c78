.class public Lcom/lenovo/lps/reaper/sdk/db/Event;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static RANDOM:Ljava/util/Random; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private account:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private appChannel:Ljava/lang/String;

.field private appVersionCode:I

.field private appVersionName:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private eventTime:J

.field private id:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private netSubType:I

.field private networkStatus:I

.field private param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

.field private pkg:Ljava/lang/String;

.field private prio:Lcom/lenovo/lps/reaper/sdk/i/i;

.field private randomVal:I

.field private sessionId:I

.field private sessionTimeCur:J

.field private sessionTimeFirst:J

.field private sessionTimePre:J

.field private userId:Ljava/lang/String;

.field private userIdClass:Ljava/lang/String;

.field private value:D

.field private visits:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/db/Event;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "sessionId"    # I
    .param p5, "randomVal"    # I
    .param p6, "sessionTimeFirst"    # J
    .param p8, "sessionTimePre"    # J
    .param p10, "sessionTimeCur"    # J
    .param p12, "visits"    # I
    .param p13, "category"    # Ljava/lang/String;
    .param p14, "action"    # Ljava/lang/String;
    .param p15, "label"    # Ljava/lang/String;
    .param p16, "value"    # D
    .param p18, "networkStatus"    # I
    .param p19, "netSubType"    # I
    .param p20, "userId"    # Ljava/lang/String;
    .param p21, "userIdClass"    # Ljava/lang/String;
    .param p22, "eventTime"    # J
    .param p24, "appVersionCode"    # I
    .param p25, "appVersionName"    # Ljava/lang/String;
    .param p26, "appChannel"    # Ljava/lang/String;
    .param p27, "prio"    # Lcom/lenovo/lps/reaper/sdk/i/i;
    .param p28, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->account:Ljava/lang/String;

    iput p4, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionId:I

    iput p5, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->randomVal:I

    iput-wide p6, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimeFirst:J

    iput-wide p8, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimePre:J

    iput-wide p10, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimeCur:J

    iput p12, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->visits:I

    iput-object p13, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->label:Ljava/lang/String;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->value:D

    move/from16 v0, p18

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->networkStatus:I

    move/from16 v0, p19

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->netSubType:I

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userId:Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userIdClass:Ljava/lang/String;

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->eventTime:J

    move/from16 v0, p24

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appVersionCode:I

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appVersionName:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appChannel:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->prio:Lcom/lenovo/lps/reaper/sdk/i/i;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "value"    # D
    .param p8, "userId"    # Ljava/lang/String;
    .param p9, "userIdClass"    # Ljava/lang/String;
    .param p10, "prio"    # Lcom/lenovo/lps/reaper/sdk/i/i;
    .param p11, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/db/Event;->RANDOM:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->account:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->label:Ljava/lang/String;

    iput-wide p6, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->value:D

    iput-object p8, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userId:Ljava/lang/String;

    iput-object p9, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userIdClass:Ljava/lang/String;

    iput-object p10, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->prio:Lcom/lenovo/lps/reaper/sdk/i/i;

    iput-object p11, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->eventTime:J

    return-void
.end method

.method private getParamMapString(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .end local p1    # "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    invoke-direct {p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .restart local p1    # "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPriority(Lcom/lenovo/lps/reaper/sdk/i/i;)I
    .locals 1
    .param p1, "priority"    # Lcom/lenovo/lps/reaper/sdk/i/i;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public check()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "event category and action must not be null or empty. category="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    :goto_2
    return v0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->value:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Ljava/lang/String;Ljava/lang/String;D)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/i/s;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "server config the event is no need send: category: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->value:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->d(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appVersionCode:I

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->eventTime:J

    return-wide v0
.end method

.method public getExtraParamsWithString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v1, "%s\u0003%s\u0002"

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v6, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()I
    .locals 2

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__PAGEVIEW__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getValue()D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetSubType()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->netSubType:I

    return v0
.end method

.method public getNetworkStatus()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->networkStatus:I

    return v0
.end method

.method public getParamMap()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    return-object v0
.end method

.method public getParamName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParamValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/lenovo/lps/reaper/sdk/i/i;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->prio:Lcom/lenovo/lps/reaper/sdk/i/i;

    return-object v0
.end method

.method public getRandomVal()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->randomVal:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionId:I

    return v0
.end method

.method public getSessionTimeCur()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimeCur:J

    return-wide v0
.end method

.method public getSessionTimeFirst()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimeFirst:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSessionTimePre()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimePre:J

    return-wide v0
.end method

.method public getTimestampEvent()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->eventTime:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userIdClass:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->value:D

    return-wide v0
.end method

.method public getVisits()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->visits:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->account:Ljava/lang/String;

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    return-void
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "appChannel"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appChannel:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 0
    .param p1, "appVersionCode"    # I

    .prologue
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appVersionCode:I

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersionName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appVersionName:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    return-void
.end method

.method public setEventTime(J)V
    .locals 1
    .param p1, "eventTime"    # J

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->eventTime:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->id:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->label:Ljava/lang/String;

    return-void
.end method

.method public setNetSubType(I)V
    .locals 0
    .param p1, "netSubType"    # I

    .prologue
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->netSubType:I

    return-void
.end method

.method public setNetworkStatus(I)V
    .locals 0
    .param p1, "networkStatus"    # I

    .prologue
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->networkStatus:I

    return-void
.end method

.method public setParamMap(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 0
    .param p1, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Lcom/lenovo/lps/reaper/sdk/i/i;)V
    .locals 0
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/i/i;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->prio:Lcom/lenovo/lps/reaper/sdk/i/i;

    return-void
.end method

.method public setRandomVal(I)V
    .locals 0
    .param p1, "randomVal"    # I

    .prologue
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->randomVal:I

    return-void
.end method

.method public setSessionId(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionId:I

    return-void
.end method

.method public setSessionTimeCur(J)V
    .locals 1
    .param p1, "sessionTimeCur"    # J

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimeCur:J

    return-void
.end method

.method public setSessionTimeFirst(J)V
    .locals 1
    .param p1, "sessionTimeFirst"    # J

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimeFirst:J

    return-void
.end method

.method public setSessionTimePre(J)V
    .locals 1
    .param p1, "sessionTimePre"    # J

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimePre:J

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserIdClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "userIdClass"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userIdClass:Ljava/lang/String;

    return-void
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->value:D

    return-void
.end method

.method public setVisits(I)V
    .locals 0
    .param p1, "visits"    # I

    .prologue
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->visits:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->randomVal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimeFirst:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimePre:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->sessionTimeCur:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->visits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->value:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->networkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->netSubType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->userIdClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->eventTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->appChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->prio:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getPriority(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/Event;->param:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getParamMapString(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
