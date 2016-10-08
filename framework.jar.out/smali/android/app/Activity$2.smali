.class Landroid/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->interceptKeycodeBackLenovo(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 2424
    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2428
    :try_start_0
    iget-object v0, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    const/4 v1, 0x1

    # setter for: Landroid/app/Activity;->mBackKeyConsumedLenovo:Z
    invoke-static {v0, v1}, Landroid/app/Activity;->access$202(Landroid/app/Activity;Z)Z

    .line 2429
    iget-object v0, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    # invokes: Landroid/app/Activity;->stopCurrentAppLenovo()V
    invoke-static {v0}, Landroid/app/Activity;->access$300(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    :goto_0
    return-void

    .line 2430
    :catch_0
    move-exception v0

    goto :goto_0
.end method
