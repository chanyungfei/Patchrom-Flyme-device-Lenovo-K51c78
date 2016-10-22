.class Lcom/android/settings/MasterClear$5;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 344
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    # getter for: Lcom/android/settings/MasterClear;->mCheckFormat:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 347
    :cond_0
    return-void
.end method
