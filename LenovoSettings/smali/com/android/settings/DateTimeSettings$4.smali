.class Lcom/flyme/deviceoriginalsettings/DateTimeSettings$4;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 653
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 658
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->access$100(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->access$100(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->reSetAutoTimePref()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)V

    .line 667
    return-void
.end method
