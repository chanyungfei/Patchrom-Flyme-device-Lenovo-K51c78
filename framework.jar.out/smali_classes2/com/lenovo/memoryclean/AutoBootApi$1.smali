.class Lcom/lenovo/memoryclean/AutoBootApi$1;
.super Landroid/database/ContentObserver;
.source "AutoBootApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/memoryclean/AutoBootApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/memoryclean/AutoBootApi;


# direct methods
.method constructor <init>(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi$1;->this$0:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 303
    const-string v0, "AutoBootApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUserWhiteObservable selfChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi$1;->this$0:Lcom/lenovo/memoryclean/AutoBootApi;

    # invokes: Lcom/lenovo/memoryclean/AutoBootApi;->startSyncUserWhiteLists()V
    invoke-static {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->access$000(Lcom/lenovo/memoryclean/AutoBootApi;)V

    .line 307
    return-void
.end method
