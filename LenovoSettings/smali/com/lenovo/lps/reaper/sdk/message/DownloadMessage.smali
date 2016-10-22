.class public Lcom/lenovo/lps/reaper/sdk/message/DownloadMessage;
.super Lcom/lenovo/lps/reaper/sdk/message/UploadMessage;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/UploadMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadMessage;->a:Ljava/lang/String;

    return-void
.end method
