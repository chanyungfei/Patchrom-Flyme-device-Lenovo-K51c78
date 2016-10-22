.class Lcom/lenovo/settings/search/Index$UpdateData;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateData"
.end annotation


# instance fields
.field public dataToDelete:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public dataToUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field

.field public forceUpdate:Z

.field public nonIndexableKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lenovo/settings/search/Index;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/search/Index;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lenovo/settings/search/Index$UpdateData;->this$0:Lcom/lenovo/settings/search/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/settings/search/Index;Lcom/lenovo/settings/search/Index$UpdateData;)V
    .locals 2
    .param p2, "other"    # Lcom/lenovo/settings/search/Index$UpdateData;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lenovo/settings/search/Index$UpdateData;->this$0:Lcom/lenovo/settings/search/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/lenovo/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/lenovo/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p2, Lcom/lenovo/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 185
    iget-boolean v0, p2, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    iput-boolean v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 186
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 197
    return-void
.end method

.method public copy()Lcom/lenovo/settings/search/Index$UpdateData;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Lcom/lenovo/settings/search/Index$UpdateData;

    iget-object v1, p0, Lcom/lenovo/settings/search/Index$UpdateData;->this$0:Lcom/lenovo/settings/search/Index;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/settings/search/Index$UpdateData;-><init>(Lcom/lenovo/settings/search/Index;Lcom/lenovo/settings/search/Index$UpdateData;)V

    return-object v0
.end method
