.class Lcom/android/settings/PrivacySettings$2;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PrivacySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 182
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 183
    .local v0, "state":Z
    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBackupRecoveryData status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->checkBoxKeyEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->access$200(Lcom/android/settings/PrivacySettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "booleanCheckBox"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 186
    iget-object v1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->checkBoxKeyEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->access$200(Lcom/android/settings/PrivacySettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    :goto_0
    return v4

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->checkBoxKeyEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->access$200(Lcom/android/settings/PrivacySettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "booleanCheckBox"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 189
    iget-object v1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->checkBoxKeyEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->access$200(Lcom/android/settings/PrivacySettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
