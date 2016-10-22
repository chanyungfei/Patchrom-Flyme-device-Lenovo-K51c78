.class public Lcom/lenovo/settings/search/provider/SearchIndexableResource;
.super Lcom/lenovo/settings/search/provider/SearchIndexableData;
.source "SearchIndexableResource.java"


# instance fields
.field public xmlResId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0
    .param p1, "rank"    # I
    .param p2, "xmlResId"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "iconResId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lenovo/settings/search/provider/SearchIndexableData;-><init>()V

    .line 36
    iput p1, p0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->rank:I

    .line 37
    iput p2, p0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 38
    iput-object p3, p0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->iconResId:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SearchIndexableResource["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-super {p0}, Lcom/lenovo/settings/search/provider/SearchIndexableData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "xmlResId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
