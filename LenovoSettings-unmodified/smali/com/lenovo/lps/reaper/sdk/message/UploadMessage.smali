.class public Lcom/lenovo/lps/reaper/sdk/message/UploadMessage;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/UploadMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getHead()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/UploadMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeInMills()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/message/UploadMessage;->c:J

    return-wide v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/UploadMessage;->b:Ljava/lang/String;

    return-void
.end method

.method public setHead(Ljava/lang/String;)V
    .locals 0
    .param p1, "head"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/UploadMessage;->a:Ljava/lang/String;

    return-void
.end method

.method public setTimeInMills(J)V
    .locals 1
    .param p1, "timeInMills"    # J

    .prologue
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/message/UploadMessage;->c:J

    return-void
.end method
