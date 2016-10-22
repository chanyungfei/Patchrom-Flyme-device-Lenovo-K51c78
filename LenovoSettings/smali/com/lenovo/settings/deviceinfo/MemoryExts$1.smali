.class Lcom/lenovo/settings/deviceinfo/MemoryExts$1;
.super Ljava/lang/Object;
.source "MemoryExts.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/deviceinfo/MemoryExts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$1;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 136
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "installLocation":I
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$1;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # getter for: Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$000(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$1;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # getter for: Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$100(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/preference/ListPreference;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    return v1
.end method
