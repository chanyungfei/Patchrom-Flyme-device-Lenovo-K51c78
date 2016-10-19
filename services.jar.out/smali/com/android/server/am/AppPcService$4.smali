.class Lcom/android/server/am/AppPcService$4;
.super Ljava/lang/Thread;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService;->addBlockedCallLog(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    iput-object p2, p0, Lcom/android/server/am/AppPcService$4;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 781
    iget-object v1, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService;->BLOCKED_CALL_LOG_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$1100()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPcService$4;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 782
    .local v0, "result":Landroid/net/Uri;
    return-void
.end method
