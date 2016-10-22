.class Lcom/flyme/deviceoriginalsettings/DateTimeSettings$5;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 901
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 902
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 903
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 906
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateDateFormatEntries()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->access$200(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)V

    .line 910
    :cond_0
    return-void
.end method
