.class Lcom/flyme/deviceoriginalsettings/users/UserSettings$4;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/users/UserSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 435
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/users/UserSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/users/UserSettings;->removeUserNow()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/users/UserSettings;->access$1000(Lcom/flyme/deviceoriginalsettings/users/UserSettings;)V

    .line 436
    return-void
.end method
