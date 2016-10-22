.class Lcom/flyme/deviceoriginalsettings/DateTimeSettings$3;
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
    .line 670
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 672
    const-string v0, "DateTimeSettings"

    const-string v1, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->reSetAutoTimePref()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)V

    .line 674
    return-void
.end method
