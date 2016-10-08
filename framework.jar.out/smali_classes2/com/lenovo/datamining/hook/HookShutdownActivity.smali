.class public Lcom/lenovo/datamining/hook/HookShutdownActivity;
.super Ljava/lang/Object;
.source "HookShutdownActivity.java"


# static fields
.field public static final PROPERTY_FORCE_SHUTDOWN:Ljava/lang/String; = "sys.lenovo.force_shutdown"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static onShutDownIntent(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 16
    .local v0, "confirm":Z
    if-nez v0, :cond_0

    .line 17
    const-string v1, "sys.lenovo.force_shutdown"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    return-void
.end method
