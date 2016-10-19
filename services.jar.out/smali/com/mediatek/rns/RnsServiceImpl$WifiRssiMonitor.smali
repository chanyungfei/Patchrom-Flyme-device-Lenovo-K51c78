.class Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;
.super Landroid/os/AsyncTask;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiRssiMonitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;)V
    .locals 4

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1456
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    :goto_0
    return-void

    .line 1457
    :catch_0
    move-exception v0

    .line 1458
    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private checkWifi()V
    .locals 2

    .prologue
    .line 1469
    const-string v0, "RnsServiceImpl"

    const-string v1, "checkWifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1452
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1464
    invoke-direct {p0}, Lcom/mediatek/rns/RnsServiceImpl$WifiRssiMonitor;->checkWifi()V

    .line 1465
    const/4 v0, 0x0

    return-object v0
.end method
