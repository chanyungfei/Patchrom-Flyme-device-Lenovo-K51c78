.class Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$3;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

.field final synthetic val$imiId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$3;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$3;->val$imiId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "input_method_id"

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$3;->val$imiId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$3;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$3;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    # getter for: Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->access$300(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    move-result-object v2

    const-class v3, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 176
    const/4 v1, 0x1

    return v1
.end method
