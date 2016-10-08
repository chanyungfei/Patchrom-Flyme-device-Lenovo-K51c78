.class Lcom/lenovo/memoryclean/LockPkgApi$2;
.super Ljava/lang/Object;
.source "LockPkgApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/memoryclean/LockPkgApi;->startSyncWhiteLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/memoryclean/LockPkgApi;


# direct methods
.method constructor <init>(Lcom/lenovo/memoryclean/LockPkgApi;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lenovo/memoryclean/LockPkgApi$2;->this$0:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi$2;->this$0:Lcom/lenovo/memoryclean/LockPkgApi;

    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi$2;->this$0:Lcom/lenovo/memoryclean/LockPkgApi;

    # getter for: Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/memoryclean/LockPkgApi;->access$100(Lcom/lenovo/memoryclean/LockPkgApi;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDb(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/lenovo/memoryclean/LockPkgApi;->access$200(Lcom/lenovo/memoryclean/LockPkgApi;Landroid/content/Context;)V

    .line 200
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi$2;->this$0:Lcom/lenovo/memoryclean/LockPkgApi;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/lenovo/memoryclean/LockPkgApi;->access$302(Lcom/lenovo/memoryclean/LockPkgApi;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 201
    return-void
.end method
