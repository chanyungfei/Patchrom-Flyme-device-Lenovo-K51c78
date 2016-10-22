.class public Lcom/lenovo/settings/MtkAirplaneModeBootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtkAirplaneModeBootCompleteReceiver.java"


# static fields
.field private static final SHOW_AIRPLANEMODE_CONFIRM_DIALOG:Ljava/lang/String; = "com.lenovo.action.show_airplanemode_confirm_dialog"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/lenovo/settings/MtkAirplaneModeBootCompleteReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/MtkAirplaneModeBootCompleteReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/settings/MtkAirplaneModeBootCompleteReceiver;->TAG:Ljava/lang/String;

    const-string v3, "action: com.lenovo.action.show_airplanemode_confirm_dialog"

    invoke-static {v2, v3}, Lcom/lenovo/settings/plugin/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.action.show_airplanemode_confirm_dialog"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "mIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    const-class v2, Lcom/lenovo/settings/MtkSwitchAirplaneModeReceiver;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
