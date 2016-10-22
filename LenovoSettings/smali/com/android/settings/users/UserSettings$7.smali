.class Lcom/flyme/deviceoriginalsettings/users/UserSettings$7;
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
    .line 492
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/users/UserSettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/users/UserSettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/users/UserSettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/users/UserSettings;->mAddedUserId:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/users/UserSettings;->access$1200(Lcom/flyme/deviceoriginalsettings/users/UserSettings;)I

    move-result v1

    # invokes: Lcom/flyme/deviceoriginalsettings/users/UserSettings;->switchUserNow(I)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/users/UserSettings;->access$1300(Lcom/flyme/deviceoriginalsettings/users/UserSettings;I)V

    .line 495
    return-void
.end method
