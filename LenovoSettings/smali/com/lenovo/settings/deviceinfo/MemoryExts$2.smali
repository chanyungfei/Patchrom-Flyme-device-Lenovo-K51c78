.class Lcom/lenovo/settings/deviceinfo/MemoryExts$2;
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
    .line 334
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 337
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/sdcard0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    const-string v0, "MemorySettings"

    const-string v1, "is MEMORY_SD0_EMMC_MNT"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    const/4 v1, 0x4

    # invokes: Lcom/lenovo/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$200(Lcom/lenovo/settings/deviceinfo/MemoryExts;I)Landroid/app/Dialog;

    .line 346
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    # invokes: Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V
    invoke-static {v0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$300(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    .line 348
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/sdcard1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    const/4 v1, 0x5

    # invokes: Lcom/lenovo/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$200(Lcom/lenovo/settings/deviceinfo/MemoryExts;I)Landroid/app/Dialog;

    goto :goto_0
.end method
