.class Lcom/flyme/deviceoriginalsettings/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/LocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/LocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/LocalePicker;I)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/LocalePicker$1;->this$0:Lcom/flyme/deviceoriginalsettings/LocalePicker;

    iput p2, p0, Lcom/flyme/deviceoriginalsettings/LocalePicker$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/LocalePicker$1;->this$0:Lcom/flyme/deviceoriginalsettings/LocalePicker;

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/LocalePicker$1;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/LocalePicker;->removeDialog(I)V

    .line 124
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/LocalePicker$1;->this$0:Lcom/flyme/deviceoriginalsettings/LocalePicker;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 125
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/LocalePicker$1;->this$0:Lcom/flyme/deviceoriginalsettings/LocalePicker;

    # getter for: Lcom/flyme/deviceoriginalsettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/LocalePicker;->access$000(Lcom/flyme/deviceoriginalsettings/LocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 126
    return-void
.end method
