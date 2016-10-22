.class Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings$1;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings;->clearEditUserInfoDialog()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings;->access$000(Lcom/flyme/deviceoriginalsettings/users/RestrictedProfileSettings;)V

    .line 248
    return-void
.end method
