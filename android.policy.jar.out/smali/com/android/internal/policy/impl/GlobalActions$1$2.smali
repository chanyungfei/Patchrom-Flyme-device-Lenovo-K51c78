.class Lcom/android/internal/policy/impl/GlobalActions$1$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$1;->onToggle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$1;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$1$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$1$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 312
    .local v0, "airplaneModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$1$2;->this$1:Lcom/android/internal/policy/impl/GlobalActions$1;

    iget-object v2, v1, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$502(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 313
    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_0
    move v0, v1

    .line 309
    goto :goto_0

    .line 312
    .restart local v0    # "airplaneModeOn":Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method
